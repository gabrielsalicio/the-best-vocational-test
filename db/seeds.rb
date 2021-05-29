#Clean Dataset
Survey.all.map { |s| s.destroy }
Career.all.map { |c| c.destroy }


#Create Career
agronomia = Career.create(name: 'Agronomia')
arquitectura = Career.create(name: 'Arquitectura')
arte = Career.create(name: 'Arte')
computación = Career.create(name: 'Computación')
economía = Career.create(name: 'Economía')
educación_física = Career.create(name: 'Educación física')
filosofía = Career.create(name: 'Filosofía')
física = Career.create(name: 'Física')
geología = Career.create(name: 'Geología')
historia = Career.create(name: 'Historia')
literaruta = Career.create(name: 'Literaruta')
matemáticas = Career.create(name: 'Matemáticas')
medicina = Career.create(name: 'Medicina')
periodismo = Career.create(name: 'Periodismo')
química = Career.create(name: 'Química')
sociología = Career.create(name: 'Sociología')
veterinaria = Career.create(name: 'Veterinaria')

#Create surveys example
Survey.create(username: 'Dikjastra', career: computacion)
Survey.create(username: 'Alan', career: computacion)
Survey.create(username: 'Doc. Dulittle', career: veterinaria)