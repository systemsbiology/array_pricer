class AddLabelingOptionOrderingInformation < ActiveRecord::Migration
  def self.up
    add_column :labeling_options, :ordering_information, :string
  end

  def self.down
    remove_column :labeling_options, :ordering_information, :string
  end
end
