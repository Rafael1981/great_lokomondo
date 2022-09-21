class AddLivroRefToReserva < ActiveRecord::Migration[7.0]
  def change
    add_reference :reservas, :livro, null: false, foreign_key: true
  end
end
