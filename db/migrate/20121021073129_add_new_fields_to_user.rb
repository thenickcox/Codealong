class AddNewFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :company, :string
    add_column :users, :industry, :string
    add_column :users, :years_of_experience, :integer

    # Contact info
    add_column :users, :phone, :string
    add_column :users, :skype, :string
    add_column :users, :facebook, :string
    add_column :users, :twitter, :string

    # Location
    add_column :users, :address1, :string
    add_column :users, :address2, :string
    add_column :users, :city, :string
    add_column :users, :state_province, :string
    add_column :users, :zip, :string
    add_column :users, :country, :string
  end
end
