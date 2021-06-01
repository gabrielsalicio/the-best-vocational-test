require './models/init.rb'

class App < Sinatra::Base
  get '/' do
    erb :landing
  end

  post "/careers" do
    data = JSON.parse request.body.read
    career =  Career.new(name: data['name'])
    
    if career.save 
      [201, {'location' => "careers/#{career.id}" }, 'CREATED']
    else
      [500,{}, 'Interal Server Error']
    end
  end

  get "/careers" do
    @careers = Career.all
    erb :careers_index
  end

  get "/questions" do
    erb :questions_index
  end

  get '/surveys' do
    Survey.all.map{ |survey| survey.name }
  end

  post "/surveys" do
    @survey = Survey.new(name: params[:name])

    if @survey.save
      @questions = Question.all
      erb :surveys_index
    else
      [500, {}, 'Internal Server Error']
    end
  end

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

  post '/responses' do
    survey = Survey.find(id: params[:survey_id])
    params[:question_id].each do |q_id|
      r = Response.new(choice_id: params[:"#{q_id}"], survey_id: survey.id, question_id: q_id)
      r.save
    end

    @career_result   = Career.find(id: survey.id_career_result(Career.all))
    survey.career_id = @career_result
    erb :outcome_index
  end
end

