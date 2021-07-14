class Party < ApplicationRecord
    validates :date, presence: true, uniqueness: true
    validates :budget, presence: true, numericality: {greater_than: 100, less_then: 10000}
    # validates :category, :supplies, presence: true
    validates :name, presence: true
    

    belongs_to :category
    has_many :party_supplies
    has_many :supplies, through: :party_supplies

    accepts_nested_attributes_for :category, reject_if: ->(attributes){ attributes['name'].blank? }
    accepts_nested_attributes_for :supplies, reject_if: ->(attributes){ attributes['name'].blank? }
    # , reject_if: ->(attributes){ attributes['name'].blank? }

    def supplies_attributes=(hash)
        # byebug
        # hash.values
        hash.each do |index, attribute_hash|
            if attribute_hash[:name].present?
                @supply = Supply.find_or_create_by(name: attribute_hash[:name])
                self.supplies << @supply
            end
        end
    end
end
