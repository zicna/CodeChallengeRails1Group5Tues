class Party < ApplicationRecord
    validates :date, presence: true, uniqueness: true
    validates :budget, presence: true, numericality: {greater_than: 100, less_then: 10000}
    validates :category, :supplies, presence: true
    validates :name, presence: true, party_name: true
    

    belongs_to :category
    has_many :party_supplies
    has_many :supplies, through: :party_supplies
end
