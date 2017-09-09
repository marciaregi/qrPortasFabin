class DoorPerson < ApplicationRecord
  belongs_to :door
  belongs_to :person
end
