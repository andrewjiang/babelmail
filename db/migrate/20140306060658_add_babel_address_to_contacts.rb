class AddBabelAddressToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :babeladdress, :string
  end
end
