class AlunosController < ApplicationController

	def index
		@alunos = Aluno.all
	end

	def show
		@aluno = Aluno.find(params[:id])
	end

	def new
		@aluno = Aluno.new
	end

	def create
		@aluno = Aluno.new(aluno_params)
		if @aluno.save
			redirect_to alunos_path, notice: 'Salvou aluno'
		else
			redirect_to alunos_path, notice: 'Deu tilt'
		end
	end

	def edit
		@aluno = Aluno.find(params[:id])
	end

	def update
		@aluno = Aluno.find(params[:id])
		if @aluno.update(aluno_params)
			redirect_to alunos_path, notice: 'Salvou aluno'
		else
			redirect_to alunos_path, notice: 'Deu tilt'
		end		
	end

	def destroy
		@aluno = Aluno.find(params[:id])
		@aluno.delete
		redirect_to alunos_path, notice: 'Deletou o aluno'
	end


	private
		def aluno_params
			params.require(:aluno).permit(:nome_completo, :email, :matricula, :data_nascimento, :nome_da_mae, :fone)
		end
end