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
ques1 = Question.create(name: 'Pregunta N°1', 
    description:'Me trasladaría a una zona agrícola-ganadera para ejercer mi profesión.', 
    number: 1, 
    type: 'Boolean')
ques1.save
    #Create Choice
	choice1_q1 = Choice.create(text:'1- SI', question:ques1)
        #Create Outcome
		Outcome.create(choice: choice1_q1, career: veterinaria)
		Outcome.create(choice: choice1_q1, career: agronomia)
	choice2_q1 = Choice.create(text:'2- NO)', question:ques1)
#Repeat for the rest of questions

ques2 = Question.create(name:'Pregunta N°2', 
    description:'Tengo buena memoria y no me cuesta estudiar y retener fórmulas y palabras técnicas.', 
    number: 2, 
    type: 'Boolean')
ques2.save
    choice1_q2 = Choice.create(text:'1- SI', question:ques2)
        Outcome.create(choice: choice1_q2, career: fisica)
        Outcome.create(choice: choice1_q2, career: matemáticas)
        Outcome.create(choice: choice1_q2, career: quimica)
        Outcome.create(choice: choice1_q2, career: computacion)
    choice2_q2 = Choice.create(text:'2- NO', question:ques2)

ques3 = Question.create(name: 'Pregunta N°3', 
    description:'Me gusta escribir. En general mis trabajos son largos y están bien organizados.', 
    number: 3, 
    type: 'Boolean')
ques3.save    
    choice1_q3 = Choice.create(text: '1- SI', question:ques3)
        Outcome.create(choice: choice1_q3, career: literaruta)
        Outcome.create(choice: choice1_q3, career: historia)
    choice2_q3 = Choice.create(text: '2- NO', question:ques3)

ques4 = Question.create(name: 'Pregunta N°4', 
    description:'Sé quien es Steven Hawking: Conozco y me atraen sus descubrimientos.', 
    number: 4, 
    type: 'Boolean')
ques4.save    
    choice1_q4 = Choice.create(text: '1- SI', question:ques4)
        Outcome.create(choice: choice1_q4, career: fisica)
    choice2_q4 = Choice.create(text: '2- NO', question:ques4)

ques5 = Question.create(name: 'Pregunta N°5', 
    description:'Me actualizo respecto de los avances tecnológicos y me intereso por investigar y conocer', 
    number: 5, 
    type: 'Boolean')
ques5.save
    choice1_q5 = Choice.create(text: '1- SI', question:ques5)
        Outcome.create(choice: choice1_q5, career: computacion)
    choice2_q5 = Choice.create(text: '2- NO', question:ques5)

ques6 = Question.create(name: 'Pregunta N°6', 
    description:'Sé quien es Andy Warhol y a qué movimiento artístico pertenece. Me apasiona conocer acerca del arte y sus exponentes.', 
    number: 6, 
    type: 'Boolean')
ques6.save
    choice1_q6 = Choice.create(text: '1- SI', question: ques6)
        Outcome.create(choice: choice1_q6, career: arte)
    choice1_q6 = Choice.create(text: '2- NO', question: ques6)

ques7 = Question.create(name: 'Pregunta N°7', 
    description:'En general me intereso por las dificultades que ha tenido que atravesar la humanidad y cómo lo ha superado.', 
    number: 7, 
    type: 'Boolean')
ques7.save
    choice1_q7 = Choice.create(text: '1- SI', question: ques7)
        Outcome.create(choice: choice1_q7, career: historia)
    choice1_q7 = Choice.create(text: '2- NO', question: ques7)
