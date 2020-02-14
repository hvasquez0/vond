class ChangeProjects < ActiveRecord::Migration[6.0]
  def change

  	change_column :projects, :time_begin, 'date USING CAST(time_begin AS date)'
  	change_column :projects, :time_end, 'date USING CAST(time_end AS date)'


  	change_column :users, :phone, :string
  end
end
