class CreateLabelingOptions < ActiveRecord::Migration
  def self.up
    create_table :labeling_options do |t|
      t.string :name
      t.integer :platform_id
      t.integer :application_id
      t.float :internal_price
      t.float :nonprofit_price
      t.float :commercial_price
      t.string :description
      t.string :starting_amount

      t.timestamps
    end
  end

  def self.down
    drop_table :labeling_options
  end
end
