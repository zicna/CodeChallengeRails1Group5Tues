class CreatePartySupplies < ActiveRecord::Migration[6.1]
  def change
    create_table :party_supplies do |t|
      t.belongs_to :party, null: false, foreign_key: true
      t.belongs_to :supply, null: false, foreign_key: true

      t.timestamps
    end
  end
end
