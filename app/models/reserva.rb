class Reserva < ApplicationRecord
  belongs_to :livro
  belongs_to :usuario
end
