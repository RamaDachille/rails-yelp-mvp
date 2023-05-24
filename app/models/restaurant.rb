class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates_presence_of :phone_number, :name, :address, :category
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
end
