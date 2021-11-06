require './models/init.rb'

class App < Sinatra::Base
  get '/' do
    erb :landing, :layout => :main
  end

  
  #GET of career
  get "/careers" do
    @careers = Career.all
    erb :careers_index, :layout => :main
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
      erb :responses_index, :layout => :main
    else
      [500, {}, 'Internal Server Error']
    end
  end

  get '/surveys' do
    @survey = Survey.new(username: params[:username])
    erb :surveys_index, :layout => :main
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

    erb :outcomes_index, :layout => :main
  end

  get "/inquiries" do
    @careers = Career.all
    erb :inquiries, :layout => :main
  end

  post '/inquiries' do
    @careers = Career.all
    @begin_date = params[:begin_date]
    @end_date = params[:end_date]
    @select_career = params[:select_career].to_i
    @result = Survey.number_of_carrers_between_dates(@begin_date, @end_date, @select_career).count
    erb :inquiries, :layout => :main
  end

end