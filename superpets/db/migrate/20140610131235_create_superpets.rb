class CreateSuperpets < ActiveRecord::Migration
  def change
    create_table :superpets do |t|
      t.string :name
      t.string :superpower
      t.string :type
      t.integer :strength

      t.timestamps
    end
  end
end
