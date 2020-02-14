class ChangeProjects < ActiveRecord::Migration[6.0]
  def change
  	change_column :projects, :time_begin, :date
  	change_column :projects, :time_end, :date

  	change_column :users, :phone, :string
  end
end
