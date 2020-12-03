class Costo < ApplicationRecord
  belongs_to :reparacion
  belongs_to :propietario
  belongs_to :vehiculo
end
