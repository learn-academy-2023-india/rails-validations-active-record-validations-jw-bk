class Address < ApplicationRecord
    belongs_to :account
    validates :street_number, :street_name, :city, :state, :zip, presence: true
    validates :street_number, :zip, numericality: { only_integer: true }
end
