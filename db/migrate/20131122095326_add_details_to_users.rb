class AddDetailsToUsers < ActiveRecord::Migration
  def change
  	add_column :users,:phone,:string
  	add_column :users,:email,:string
  end
end
