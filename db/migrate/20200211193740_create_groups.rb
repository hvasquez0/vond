class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :group_members do |t|
    	t.integer	:user_id
    	t.string	:profession
    	t.integer	:project_id

    end
  end
end
