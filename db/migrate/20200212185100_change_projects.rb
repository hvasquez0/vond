class ChangeProjects < ActiveRecord::Migration[6.0]
  def change

  	change_column :projects, :time_begin, 'date USING CAST(column_name AS date)'
  	change_column :projects, :time_end, 'date USING CAST(column_name AS date)'


  	change_column :users, :phone, :string
  end
end
