class AddCategoryToTransac < ActiveRecord::Migration[6.1]
  def change
    add_reference :transacs, :category, null: false, foreign_key: true
  end
end
