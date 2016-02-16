class AddIndexEmployees < ActiveRecord::Migration
  def change
    add_column :accounts, :employees, :integer
    add_index :accounts, :employees
  end
end
