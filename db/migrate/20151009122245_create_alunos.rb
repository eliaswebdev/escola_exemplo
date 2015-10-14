class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.string :nome_completo
      t.string :email
      t.string :matricula
      t.date :data_nascimento
      t.string :nome_da_mae
      t.string :fone

      t.timestamps null: false
    end
  end
end
