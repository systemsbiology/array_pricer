class CreateLabelingOptions < ActiveRecord::Migration
  def self.up
    create_table :labeling_options do |t|
      t.string :name
      t.float :internal_price
      t.float :nonprofit_price
      t.float :commercial_price
      t.string :description
      t.string :starting_amount

      t.timestamps
    end

    create_table :labeling_options_microarrays, :id => false do |t|
      t.integer :labeling_option_id
      t.integer :microarray_id
    end
  end

  def self.down
    drop_table :labeling_options
    drop_table :labeling_option_microarrays
  end
end
