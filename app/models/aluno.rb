class Aluno < ActiveRecord::Base

	validates :nome_completo, presence: true
end
