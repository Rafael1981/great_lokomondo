class CreateLivros < ActiveRecord::Migration[7.0]
  def change
    create_table :livros do |t|
      t.string :titulo
      t.string :categoria
      t.datetime :data_cad
      t.datetime :data_alte

      t.timestamps
    end
  end
end
