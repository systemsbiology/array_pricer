class CreateHybridizationOptions < ActiveRecord::Migration
  def self.up
    create_table :hybridization_options do |t|
      t.string :name
      t.integer :platform_id
      t.float :internal_price
      t.float :nonprofit_price
      t.float :commercial_price
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :hybridization_options
  end
end
