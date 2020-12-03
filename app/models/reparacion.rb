class Reparacion < ApplicationRecord
  belongs_to :vehiculo
  belongs_to :usuario
end
