class AddColumnTo < ActiveRecord::Migration
  def change
    add_column :superpets, :kind, :string
  end
end
