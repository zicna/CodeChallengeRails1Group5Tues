class RemoveColumnCategoryFromParties < ActiveRecord::Migration[6.1]
  def change
    remove_column :parties, :category
    add_column :parties, :category_id, :integer
  end
end
