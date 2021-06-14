#Clean Dataset
Career.all.map { |c| c.destroy }
Choice.all.map { |ch| ch.destroy }
Outcome.all.map { |o| o.destroy }
Question.all.map { |q| q.destroy }
Response.all.map { |r| r.destroy }
Survey.all.map { |s| s.destroy }

#Create Careers
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
    type: 'Multiple-Choice')
    #Create Choice for the question
	choice1_q1 = Choice.create(text:'1- SI', question:ques1)
        #Create Outcome for the choice
		Outcome.create(choice: choice1_q1, career: veterinaria)
		Outcome.create(choice: choice1_q1, career: agronomia)
	choice2_q1 = Choice.create(text:'2- NO)', question:ques1)

ques2 = Question.create(name:'Pregunta N°2', 
    description:'Tengo buena memoria y no me cuesta estudiar y retener fórmulas y palabras técnicas.', 
    number: 2, 
    type: 'Multiple-Choice')
    choice1_q2 = Choice.create(text:'1- SI', question:ques2)
        Outcome.create(choice: choice1_q2, career: fisica)
        Outcome.create(choice: choice1_q2, career: matemáticas)
        Outcome.create(choice: choice1_q2, career: quimica)
        Outcome.create(choice: choice1_q2, career: computacion)
    choice2_q2 = Choice.create(text:'2- NO', question:ques2)

ques3 = Question.create(name: 'Pregunta N°3', 
    description:'Me gusta escribir. En general mis trabajos son largos y están bien organizados.', 
    number: 3, 
    type: 'Multiple-Choice')
    choice1_q3 = Choice.create(text: '1- SI', question:ques3)
        Outcome.create(choice: choice1_q3, career: literaruta)
        Outcome.create(choice: choice1_q3, career: historia)
    choice2_q3 = Choice.create(text: '2- NO', question:ques3)

ques4 = Question.create(name: 'Pregunta N°4', 
    description:'Sé quien es Steven Hawking: Conozco y me atraen sus descubrimientos.', 
    number: 4, 
    type: 'Multiple-Choice')
    choice1_q4 = Choice.create(text: '1- SI', question:ques4)
        Outcome.create(choice: choice1_q4, career: fisica)
    choice2_q4 = Choice.create(text: '2- NO', question:ques4)

ques5 = Question.create(name: 'Pregunta N°5', 
    description:'Me actualizo respecto de los avances tecnológicos y me intereso por investigar y conocer', 
    number: 5, 
    type: 'Multiple-Choice')
    choice1_q5 = Choice.create(text: '1- SI', question:ques5)
        Outcome.create(choice: choice1_q5, career: computacion)
    choice2_q5 = Choice.create(text: '2- NO', question:ques5)

ques6 = Question.create(name: 'Pregunta N°6', 
    description:'Sé quien es Andy Warhol y a qué movimiento artístico pertenece. Me apasiona conocer acerca del arte y sus exponentes.', 
    number: 6, 
    type: 'Multiple-Choice')
    choice1_q6 = Choice.create(text: '1- SI', question:ques6)
        Outcome.create(choice: choice1_q6, career: arte)
    choice1_q6 = Choice.create(text: '2- NO', question:ques6)

ques7 = Question.create(name: 'Pregunta N°7', 
    description:'En general me intereso por las dificultades que ha tenido que atravesar la humanidad y cómo lo ha superado.', 
    number: 7, 
    type: 'Multiple-Choice')
    choice1_q7 = Choice.create(text: '1- SI', question:ques7)
        Outcome.create(choice: choice1_q7, career: historia)
    choice1_q7 = Choice.create(text: '2- NO', question:ques7)

ques8 = Question.create(name: 'Pregunta N°8', 
    description:'Me apasiona leer y no me importa si el libro que elijo tiene muchas páginas,para mí es un gran entretenimiento.', 
    number: 8, 
    type: 'Multiple-Choice')
    choice1_q8 = Choice.create(text: '1- SI', question:ques8)
        Outcome.create(choice: choice1_q8, career: literaruta)
        Outcome.create(choice: choice1_q8, carrer: historia)
    choice1_q8 = Choice.create(text: '2- NO', question:ques8)

ques9 = Question.create(name: 'Pregunta N°9', 
    description:'Me atrae conocer los procesos y las áreas que hacen funcionar a las empresas.', 
    number: 9, 
    type: 'Multiple-Choice')
    choice1_q9 = Choice.create(text: '1- SI', question:ques9)
        Outcome.create(choice: choice1_q9, career: economia)
    choice1_q9 = Choice.create(text: '2- NO', question:ques8)

ques10 = Question.create(name: 'Pregunta N°10',
    description:'Me siento identificado con el pensamiento de algunos filósofos y escritores.',
    number: 10,
    type: 'Multiple-Choice')
    choice_q10 = Choice.create(text: '1- SI', question:ques10)
        Outcome.create(choice: choice_q10, carrer: filosofia)
        Outcome.create(choice: choice_q10, carrer: historia)
    choice_q10 = Choice.create(text: '2- NO', question:ques10)

ques11 = Question.create(name: 'Pregunta N°11',
    description:'Me encanta estudiar el cuerpo humano y conocer cómo funciona.Además, no me impresiona la sangre.',
    number: 11,
    type: 'Multiple-Choice')
    choice_q11 = Choice.create(text: '1- SI', question:ques11)
        Outcome.create(choice: choice_q11, carrer: medicina)
    choice_q11 = Choice.create(text: '2- NO', question:ques11)

ques12 = Question.create(name: 'Pregunta N°12',
    description:'Si pudiera elegir, pasaría mucho tiempo diseñando novedosos objetos o edificios en mi computadora.',
    number: 12,
    type: 'Multiple-Choice')
    choice_q12 = Choice.create(text: '1- SI', question:ques12)
        Outcome.create(choice: choice_q12, carrer: computacion)
        Outcome.create(choice: choice_q12, carrer: arquitectura)
    choice_q12 = Choice.create(text: '2- NO', question:ques12)

ques13 = Question.create(name: 'Pregunta°13',
    description:'Si mi blog fuera temático, trataria de: ',
    number: 13,
    type: 'Multiple-Choice')
    choice_q13 = Choice.create(text: '1- La importancia de la expresión artística en el desarollo de la identidad de los pueblos.', question:ques13)
        Outcome.create(choice: choice_q13, carrer: sociologia)
    choice_q13 = Choice.create(text: '2- La arqueología urbana como forma de aprender acerca de la historia cultural de una ciudad.', question:ques13)
        Outcome.create(choice: choice_q13, carrer: historia)
    choice_q13 = Choice.create(text: '3- La tecnología satelital en un proyecto para descubrir actividad volcánica para prevenir catástrofes climaticas.', question:ques13)
        Outcome.create(choice: choice_q13, career: computacion)
        Outcome.create(choice: choice_q13, career: geologia)
    choice_q13 = Choice.create(text: '4- Ninguna de las opciones.', question:ques13)

ques14 = Question.create(name: 'Pregunta°14',
    description:'Integraría un equipo de trabajo encargado de producir un audiovisual sobre: ',
    number: 14,
    type: 'Multiple-Choice')
    choice_q14 = Choice.create(text: '1- La práctica de deportes y su influencia positiva en el estado de ánimo de las personas.', question:ques14)
        Outcome.create(choice: choice_q14, carrer: educación_fisica)
    choice_q14 = Choice.create(text: '2- Los pensadores del siglo XX y su aporte a la gestión de las organizaciones.', question:ques14)
        Outcome.create(choice: choice_q14, carrer: filosofia)
        Outcome.create(choice: choice_q14, carrer: historia)
    choice_q14 = Choice.create(text: '3- Las mascotas y su incidencia en la calidad de vida de las personas no videntes.', question:ques14)
        Outcome.create(choice: choice_q14, carrer: veterinaria)
    choice_q14 = Choice.create(text: '4- El uso de la PC como herramienta para el control de los procesos industriales.', question:ques14)
        Outcome.create(choice: choice_q14, carrer: computacion)
    choice_q14 = Choice.create(text: '5- Procesos productivos de una empresa.', question:ques14)
        Outcome.create(choice: choice_q14, carrer: economia)
    choice_q14 = Choice.create(text: '6- Ninguna de las opciones.', question:ques14)

ques15 = Question.create(name: 'Pregunta°15',
    description:'Sería importante destacarme como: ',
    number: 15,
    type: 'Multiple-Choice')
    choice_q15 = Choice.create(text: '1- Director de una investigación técnico científica.', question:ques15)
        Outcome.create(choice: choice_q15, carrer: fisica)
        Outcome.create(choice: choice_q15, carrer: quimica)
        Outcome.create(choice: choice_q15, carrer: computacion)
    choice_q15 = Choice.create(text: '2- Gerente general de una empresa reconocida por su responsabilidad social.', question:ques15)
        Outcome.create(choice: choice_q15, carrer: economia)
    choice_q15 = Choice.create(text: '3- Un deportista famoso por su destreza física y su ética profesional.', question:ques15)
        Outcome.create(choice: choice_q15, carrer: educación_fisica)
    choice_q15 = Choice.create(text: '4- Experto en la detección precoz de enfermedades neurológicas en niños.', question:ques15)
        Outcome.create(choice: choice_q15, carrer: medicina)
    choice_q15 = Choice.create(text: '5- Un agente de prensa audaz, número uno en el ranking de notas a celebridades.', question:ques15)
        Outcome.create(choice: choice_q15, carrer: periodismo)
    choice_q15 = Choice.create(text: '6- Ninguna de las opciones.', question:ques15)

#Create surveys example
Survey.create(username: 'Dikjastra', career: computacion)
Survey.create(username: 'Alan', career: computacion)
Survey.create(username: 'Doc. Dulittle', career: veterinaria)