class AddGplusImage < ActiveRecord::Migration
  def change
  	add_column :users,:gplusImage,:string
  end
end
