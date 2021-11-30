class AddColumnsToTransaction < ActiveRecord::Migration[6.1]
  def change
    add_column :transactions, :name, :string
    add_column :transactions, :auther_id, :integer
    add_column :transactions, :amount, :integer
  end
end
