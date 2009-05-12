class CreateMicroarrays < ActiveRecord::Migration
  def self.up
    create_table :microarrays do |t|
      t.string :name
      t.float :internal_price
      t.float :nonprofit_price
      t.float :commercial_price
      t.integer :number_per_slide
      t.integer :organism_id
      t.integer :application_id
      t.integer :platform_id
      t.string :catalog_number

      t.timestamps
    end
  end

  def self.down
    drop_table :microarrays
  end
end
