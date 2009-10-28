class AddUserAndFacilityArrayPricing < ActiveRecord::Migration
  def self.up
    rename_column :microarrays, :internal_price, :facility_internal_price
    rename_column :microarrays, :nonprofit_price, :facility_nonprofit_price
    rename_column :microarrays, :commercial_price, :facility_commercial_price

    add_column :microarrays, :user_internal_price, :float
    add_column :microarrays, :user_nonprofit_price, :float
    add_column :microarrays, :user_commercial_price, :float
  end

  def self.down
    rename_column :microarrays, :facility_internal_price, :internal_price
    rename_column :microarrays, :facility_nonprofit_price, :nonprofit_price
    rename_column :microarrays, :facility_commercial_price, :commercial_price

    remove_column :microarrays, :user_internal_price
    remove_column :microarrays, :user_nonprofit_price
    remove_column :microarrays, :user_commercial_price
  end
end
