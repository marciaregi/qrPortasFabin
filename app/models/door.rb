class Door < ApplicationRecord
    # has_one :user
    # accepts_nested_attributes_for :user
    belongs_to :user
end
