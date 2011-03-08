class CreateVendors < ActiveRecord::Migration
  def self.up
    create_table :vendors do |t|
      t.string :name
      t.string :address
      t.string :description
      t.string :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :vendors
  end
end
