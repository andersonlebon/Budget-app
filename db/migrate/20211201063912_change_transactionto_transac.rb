class ChangeTransactiontoTransac < ActiveRecord::Migration[6.1]
  def change
    rename_table :transactions, :transacs
  end
end

