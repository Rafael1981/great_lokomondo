class CreateReservas < ActiveRecord::Migration[7.0]
  def change
    create_table :reservas do |t|
      t.datetime :data_reserva
      t.datetime :data_devolucao
      t.string :status_reserva

      t.timestamps
    end
  end
end
