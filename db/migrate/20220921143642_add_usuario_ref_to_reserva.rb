class AddUsuarioRefToReserva < ActiveRecord::Migration[7.0]
  def change
    add_reference :reservas, :usuario, null: false, foreign_key: true
  end
end
