class CreateHybridizationOptions < ActiveRecord::Migration
  def self.up
    create_table :hybridization_options do |t|
      t.string :name
      t.float :internal_price
      t.float :nonprofit_price
      t.float :commercial_price
      t.string :description

      t.timestamps
    end

    create_table :hybridization_options_microarrays, :id => false do |t|
      t.integer :hybridization_option_id
      t.integer :microarray_id
    end
  end

  def self.down
    drop_table :hybridization_options
    drop_table :hybridization_option_microarrays
  end
end
