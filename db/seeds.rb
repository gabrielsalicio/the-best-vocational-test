#Clean Dataset
Response.all.map { |r| r.destroy }
Survey.all.map   { |s| s.destroy }
Outcome.all.map  { |o| o.destroy }
Choice.all.map   { |ch| ch.destroy }
Career.all.map   { |c| c.destroy }
Question.all.map { |q| q.destroy }

#Create Careers
agronomia        = Career.create(name: 'Agronomia', 
image: 'http://www.ayv.unrc.edu.ar/images/principal/logo.png', 
description:'La formación de grado en la Facultad de Agronomía y Veterinaria tiene la finalidad de brindar a la sociedad un profesional universitario capacitado integralmente para comprender, orientar, modificar, conducir o transformar sistemas productivos agroalimentarios, tanto en la escala predial, regional, nacional o macroregional.')

arquitectura     = Career.create(name: 'Arquitectura', 
image:'https://www.unrc.edu.ar/imgs/top-a-cel.png',
description:'La carrera de Arquitectura tiene como objetivo fundamental formar profesionales aptos para diseñar, programar, dirigir y construir los edificios y espacios necesarios para albergar las actividades del hombre en sociedad, satisfaciendo las necesidades y aspiraciones que ésta demanda')

arte             = Career.create(name: 'Arte',
image:'https://www.unrc.edu.ar/imgs/top-a-cel.png',
description:'La Carrera de Artes se dedica al estudio de la Teoría de las Artes, su historia y las diversas manifestaciones artísticas que de ella se desprenden, a través de reflexiones conceptuales y críticas.')

computacion      = Career.create(name: 'Computación', 
image: 'https://www.unrc.edu.ar/imgs/top-a-cel.png', 
description:'Esta licenciatura está orientada a la creación y mantenimiento de software de aplicación, así como de sistemas de información de todo tipo, desde los requeridos por la pequeña y mediana empresa hasta los muy elaborados y complejos que se emplean en organizaciones que manejan bancos de datos y redes de computadoras.')

economia         = Career.create(name: 'Economía', 
image: 'https://i1.wp.com/www.eco.unrc.edu.ar/seccion/grado/wp-content/uploads/sites/12/2016/07/grado-1.png?w=400&ssl=1', 
description:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')


educacion_fisica = Career.create(name: 'Educación física', 
image: 'https://www.unrc.edu.ar/imgs/top-a-cel.png',
description:'El egresado está capacitado para ocupar un espacio como enlace pedagógico en el área deportiva, tanto a nivel conceptual como en actitud. ... Las materias más importantes de la carrera son la nutrición, la fisiología, los diferentes deportes y su reglamento, técnicas didácticas y pedagogía.')

filosofia        = Career.create(name: 'Filosofía',
image: 'https://www.unrc.edu.ar/imgs/top-a-cel.png', 
description:'¿Qué es la Carrera en Filosofía? La licenciatura en Filosofía es una de las más enriquecedoras. En esta licenciatura se desarrolla la capacidad de razonamiento, la lógica, la argumentación y la crítica para brindar soluciones efectivas a los problemas cotidianos y trascendentales de la vida')

fisica           = Career.create(name: 'Física',
image: 'https://www.unrc.edu.ar/imgs/top-a-cel.png', 
description:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')

geologia         = Career.create(name: 'Geología',
image: 'https://www.unrc.edu.ar/imgs/top-a-cel.png', 
description:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')

historia         = Career.create(name: 'Historia',
image: 'https://www.unrc.edu.ar/imgs/top-a-cel.png', 
description:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')

literaruta       = Career.create(name: 'Literaruta',
image: 'https://www.unrc.edu.ar/imgs/top-a-cel.png', 
description:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')

matematica       = Career.create(name: 'Matemáticas',
image: 'https://www.unrc.edu.ar/imgs/top-a-cel.png', 
description:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')

medicina         = Career.create(name: 'Medicina',
image: 'https://www.unrc.edu.ar/imgs/top-a-cel.png', 
description:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')

periodismo       = Career.create(name: 'Periodismo',
image: 'https://www.unrc.edu.ar/imgs/top-a-cel.png', 
description:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')

quimica          = Career.create(name: 'Química',
image: 'https://www.unrc.edu.ar/imgs/top-a-cel.png', 
description:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')

sociologia       = Career.create(name: 'Sociología',
image: 'https://www.unrc.edu.ar/imgs/top-a-cel.png', 
description:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')

veterinaria      = Career.create(name: 'Veterinaria',
image: 'https://www.unrc.edu.ar/imgs/top-a-cel.png', 
description:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')



#Create Questions
ques1 = Question.create(name: 'Pregunta N°1', 
    description:'Me trasladaría a una zona agrícola-ganadera para ejercer.', 
    number: 1,
    type: 'Multiple-Choice')
    #Create Choice for the question
	choice1_q1 = Choice.create(text:'1- SI', question:ques1)
        #Create Outcome for the choice
		Outcome.create(choice: choice1_q1, career: veterinaria)
		Outcome.create(choice: choice1_q1, career: agronomia)
	choice2_q1 = Choice.create(text:'2- NO', question:ques1)

ques2 = Question.create(name:'Pregunta N°2', 
    description:'Tengo buena memoria y no me cuesta estudiar y retener fórmulas 
    y palabras técnicas.', 
    number: 2, 
    type: 'Multiple-Choice')
    choice1_q2 = Choice.create(text:'1- SI', question:ques2)
        Outcome.create(choice: choice1_q2, career: fisica)
        Outcome.create(choice: choice1_q2, career: matematica)
        Outcome.create(choice: choice1_q2, career: quimica)
        Outcome.create(choice: choice1_q2, career: computacion)
    choice2_q2 = Choice.create(text:'2- NO', question:ques2)

ques3 = Question.create(name: 'Pregunta N°3', 
    description:'Me gusta escribir. En general mis trabajos son largos y están 
    bien organizados.', 
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
    description:'Me actualizo respecto de los avances tecnológicos y me intereso
     por investigar y conocer', 
    number: 5, 
    type: 'Multiple-Choice')
    choice1_q5 = Choice.create(text: '1- SI', question:ques5)
        Outcome.create(choice: choice1_q5, career: computacion)
    choice2_q5 = Choice.create(text: '2- NO', question:ques5)

ques6 = Question.create(name: 'Pregunta N°6', 
    description:'Sé quien es Andy Warhol y a qué movimiento artístico pertenece.
     Me apasiona conocer acerca del arte y sus exponentes.', 
    number: 6, 
    type: 'Multiple-Choice')
    choice1_q6 = Choice.create(text: '1- SI', question:ques6)
        Outcome.create(choice: choice1_q6, career: arte)
    choice2_q6 = Choice.create(text: '2- NO', question:ques6)

ques7 = Question.create(name: 'Pregunta N°7', 
    description:'En general me intereso por las dificultades que ha tenido que 
    atravesar la humanidad y cómo lo ha superado.', 
    number: 7, 
    type: 'Multiple-Choice')
    choice1_q7 = Choice.create(text: '1- SI', question:ques7)
        Outcome.create(choice: choice1_q7, career: historia)
    choice2_q7 = Choice.create(text: '2- NO', question:ques7)

ques8 = Question.create(name: 'Pregunta N°8', 
    description:'Me apasiona leer y no me importa si el libro que elijo tiene 
    muchas páginas,para mí es un gran entretenimiento.', 
    number: 8, 
    type: 'Multiple-Choice')
    choice1_q8 = Choice.create(text: '1- SI', question:ques8)
        Outcome.create(choice: choice1_q8, career: literaruta)
        Outcome.create(choice: choice1_q8, career: historia)
    choice2_q8 = Choice.create(text: '2- NO', question:ques8)

ques9 = Question.create(name: 'Pregunta N°9', 
    description:'Me atrae conocer los procesos y las áreas que hacen funcionar 
    a las empresas.', 
    number: 9, 
    type: 'Multiple-Choice')
    choice1_q9 = Choice.create(text: '1- SI', question:ques9)
        Outcome.create(choice: choice1_q9, career: economia)
    choice2_q9 = Choice.create(text: '2- NO', question:ques9)

ques10 = Question.create(name: 'Pregunta N°10',
    description:'Me siento identificado con el pensamiento de algunos filósofos
     y escritores.',
    number: 10,
    type: 'Multiple-Choice')
    choice1_q10 = Choice.create(text: '1- SI', question:ques10)
        Outcome.create(choice: choice1_q10, career: filosofia)
        Outcome.create(choice: choice1_q10, career: historia)
    choice2_q10 = Choice.create(text: '2- NO', question:ques10)

ques11 = Question.create(name: 'Pregunta N°11',
    description:'Me encanta estudiar el cuerpo humano y conocer cómo funciona.
    Además, no me impresiona la sangre.',
    number: 11,
    type: 'Multiple-Choice')
    choice1_q11 = Choice.create(text: '1- SI', question:ques11)
        Outcome.create(choice: choice1_q11, career: medicina)
    choice2_q11 = Choice.create(text: '2- NO', question:ques11)

ques12 = Question.create(name: 'Pregunta N°12',
    description:'Si pudiera elegir, pasaría mucho tiempo diseñando novedosos 
    objetos o edificios en mi computadora.',
    number: 12,
    type: 'Multiple-Choice')
    choice1_q12 = Choice.create(text: '1- SI', question:ques12)
        Outcome.create(choice: choice1_q12, career: computacion)
        Outcome.create(choice: choice1_q12, career: arquitectura)
    choice2_q12 = Choice.create(text: '2- NO', question:ques12)

ques13 = Question.create(name: 'Pregunta°13',
    description:'Si mi blog fuera temático, trataria de: ',
    number: 13,
    type: 'Multiple-Choice')
    choice1_q13 = Choice.create(text: '1- La importancia de la expresión 
    artística en el desarollo de la identidad de los pueblos.', question:ques13)
        Outcome.create(choice: choice1_q13, career: sociologia)
    choice2_q13 = Choice.create(text: '2- La arqueología urbana como forma de 
    aprender acerca de la historia cultural de una ciudad.', question:ques13)
        Outcome.create(choice: choice2_q13, career: historia)
    choice3_q13 = Choice.create(text: '3- La tecnología satelital en un proyecto
     para descubrir actividad volcánica para prevenir catástrofes climaticas.', question:ques13)
        Outcome.create(choice: choice3_q13, career: computacion)
        Outcome.create(choice: choice3_q13, career: geologia)
    choice4_q13 = Choice.create(text: '4- Ninguna de las opciones.', question:ques13)

ques14 = Question.create(name: 'Pregunta°14',
    description:'Integraría un equipo de trabajo encargado de producir un audiovisual sobre: ',
    number: 14,
    type: 'Multiple-Choice')
    choice1_q14 = Choice.create(text: '1- La práctica de deportes y su influencia
     positiva en el estado de ánimo de las personas.', question:ques14)
        Outcome.create(choice: choice1_q14, career: educacion_fisica)
    choice2_q14 = Choice.create(text: '2- Los pensadores del siglo XX y su aporte
     a la gestión de las organizaciones.', question:ques14)
        Outcome.create(choice: choice2_q14, career: filosofia)
        Outcome.create(choice: choice2_q14, career: historia)
    choice3_q14 = Choice.create(text: '3- Las mascotas y su incidencia en la 
    calidad de vida de las personas no videntes.', question:ques14)
        Outcome.create(choice: choice3_q14, career: veterinaria)
    choice4_q14 = Choice.create(text: '4- El uso de la PC como herramienta para
     el control de los procesos industriales.', question:ques14)
        Outcome.create(choice: choice4_q14, career: computacion)
    choice5_q14 = Choice.create(text: '5- Procesos productivos de una empresa.', question:ques14)
        Outcome.create(choice: choice5_q14, career: economia)
    choice6_q14 = Choice.create(text: '6- Ninguna de las opciones.', question:ques14)

ques15 = Question.create(name: 'Pregunta°15',
    description:'Sería importante destacarme como: ',
    number: 15,
    type: 'Multiple-Choice')
    choice1_q15 = Choice.create(text: '1- Director de una investigación técnico
     científica.', question:ques15)
        Outcome.create(choice: choice1_q15, career: fisica)
        Outcome.create(choice: choice1_q15, career: quimica)
        Outcome.create(choice: choice1_q15, career: computacion)
    choice2_q15 = Choice.create(text: '2- Gerente general de una empresa 
    reconocida por su responsabilidad social.', question:ques15)
        Outcome.create(choice: choice2_q15, career: economia)
    choice3_q15 = Choice.create(text: '3- Un deportista famoso por su destreza 
    física y su ética profesional.', question:ques15)
        Outcome.create(choice: choice3_q15, career: educacion_fisica)
    choice4_q15 = Choice.create(text: '4- Experto en la detección precoz de 
    enfermedades neurológicas en niños.', question:ques15)
        Outcome.create(choice: choice4_q15, career: medicina)
    choice5_q15 = Choice.create(text: '5- Un agente de prensa audaz, número uno
     en el ranking de notas a celebridades.', question:ques15)
        Outcome.create(choice: choice5_q15, career: periodismo)
    choice6_q15 = Choice.create(text: '6- Ninguna de las opciones.', question:ques15)