# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do 
	alunos = Aluno.create(
		nome_completo: 'John Doe',
		email: 'joao@gmail.com',
	 	matricula: '123456',
	 	data_nascimento: '06-12-1991',
	 	nome_da_mae: 'Maria',
	 	fone: '(99) 9 9999-9999'
	 )
end