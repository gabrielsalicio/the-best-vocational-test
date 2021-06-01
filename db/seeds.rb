#Clean Dataset
Career.all.map { |c| c.destroy }
Choice.all.map { |ch| ch.destroy }
Outcome.all.map { |o| o.destroy }
Question.all.map { |q| q.destroy }
Response.all.map { |r| r.destroy }
Survey.all.map { |s| s.destroy }

#Create surveys example
Survey.create(username: 'Dikjastra', career: computacion)
Survey.create(username: 'Alan', career: computacion)
Survey.create(username: 'Doc. Dulittle', career: veterinaria)


#Create Career
agronomia        = Career.create(name: 'Agronomia', description:'', duration: '')
arquitectura     = Career.create(name: 'Arquitectura', description:'', duration: '')
arte             = Career.create(name: 'Arte', description:'', duration: '')
computacion      = Career.create(name: 'Computación', description:'', duration: '')
economia         = Career.create(name: 'Economía', description:'', duration: '')
educación_fisica = Career.create(name: 'Educación física', description:'', duration: '')
filosofia        = Career.create(name: 'Filosofía', description:'', duration: '')
fisica           = Career.create(name: 'Física', description:'', duration: '')
geologia         = Career.create(name: 'Geología', description:'', duration: '')
historia         = Career.create(name: 'Historia', description:'', duration: '')
literaruta       = Career.create(name: 'Literaruta', description:'', duration: '')
matematicas      = Career.create(name: 'Matemáticas', description:'', duration: '')
medicina         = Career.create(name: 'Medicina', description:'', duration: '')
periodismo       = Career.create(name: 'Periodismo', description:'', duration: '')
quimica          = Career.create(name: 'Química', description:'', duration: '')
sociologia       = Career.create(name: 'Sociología', description:'', duration: '')
veterinaria      = Career.create(name: 'Veterinaria', description:'', duration: '')

#Create Questions
ques1 = Question.new(name: 'Pregunta N°1', description:'Me trasladaría a una zona agrícola-ganadera para ejercer mi profesión.', number: 1, type: 'Boolean')
ques1.save
    #Create Choice
	choice1_q1 = Choice.new(text:'1- SI', question:ques1)
        #Create Outcome
		Outcome.create(choice: choice1_q1, career: veterinaria)
		Outcome.create(choice: choice1_q1, career: agronomia)
	choice2_q1 = Choice.new(text:'2- NO)', question:ques1)
#Repeat for the rest of questions

ques2 = Questions.new(name:'2', description:'Tengo buena memoria y no me cuesta estudiar y retener fórmulas y palabras técnicas.', number: 2, type: 'Boolean')
    choice1_q2 = Choice.new(text:'1- SI', question:ques2)
        Outcome.create(choice: choice1_q2, career: fisica)
        Outcome.create(choice: choice2_q2, career: matemáticas)
        Outcome.create(choice: choice1_q3, career: quimica)
        Outcome.create(choice: choice1_q4, career: computacion)
    choice2_q2 = Choice.new(text:'2- NO', question:ques2)





