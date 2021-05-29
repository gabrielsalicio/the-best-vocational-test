#Clean Dataset
Survey.all.map { |s| s.destroy }
Career.all.map { |c| c.destroy }


#Create Career
computacion = Career.create(name: 'Computacion')
veterinaria = Career.create(name: 'Veterinaria')

#Create surveys example
Survey.create(username: 'Dikjastra', career: computacion)
Survey.create(username: 'Alan', career: computacion)
Survey.create(username: 'Doc. Dulittle', career: veterinaria)