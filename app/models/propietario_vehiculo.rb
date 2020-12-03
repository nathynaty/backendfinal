class PropietarioVehiculo < ApplicationRecord
  belongs_to :vehiculo
  belongs_to :propietario
end
