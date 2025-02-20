require './models/init.rb'

class App < Sinatra::Base
  get '/' do
    erb :landing
  end

  #POST & GET of posts
  post "/posts" do
    request.body.rewind  # in case someone already read it
    data = JSON.parse request.body.read
    post = Post.new(description: data['desc'])
    if post.save
      [201, { 'Location' => "posts/#{post.id}" }, 'CREATED']
    else
      [500, {}, 'Internal Server Error']
    end
  end

  get '/posts' do
    p = Post.where(id: 1).last
    p.description
  end


  #GET of career
  get "/careers" do
    @careers = Career.all
    erb :careers_index
  end
  #GET careers by id
  get '/careers/:id' do
    @career = Career.find(id: params[:id])
    erb :careers_template
  end
  
  #POST & GET of questions
  post '/questions' do
    question = Question.new(name: params[:name])

    if question.save
      [201, {'Location' => "careers/#{career.id}"}, 'CREATED']
    else
      [500, {}, 'Internal Server Error']
    end
  end

  get "/questions" do
    @questions = Question.all
    erb :questions_index
  end


  #POST & GET of surveys
  post "/surveys" do
    @user = Survey.new(username: params[:username])

    if @user.save
      @questions = Question.all
      @last_survey = Survey.last
      erb :responses_index
    else
      [500, {}, 'Internal Server Error']
    end
  end

  get '/surveys' do
    @survey = Survey.new(username: params[:username])
    erb :surveys_index
  end


  #POST & GET of responses 
  post '/responses' do
    @user = Survey.find(id: params[:survey_id]) 
    @last_survey = Survey.last
    params[:question_id].each do |question_id|
      resActu = Response.new(survey_id: @user.id, question_id: question_id,
        choice_id: params[:"#{question_id}"])
      resActu.save
    end

    res = {}

    for career in Career.all
      res[career.id] = 0
    end

    for response in @user.responses
      choice = Choice.find(id: response.choice_id)

      for outcome in choice.outcomes
        res[outcome.career_id] = res[outcome.career_id] + 1
      end
    end
    
    resCar = res.key(res.values.max)
    @career = Career.find(id: resCar)
    @user.update(career_id: @career.id)

    erb :outcomes_index
  end

  get "/inquiries" do
    erb :inquiries
  end

end