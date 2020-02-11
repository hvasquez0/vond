class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|

    t.string 	:name
    t.integer 	:time_begin
    t.integer 	:time_end
    t.text		:proffesion_needed
    t.text		:description
    t.integer	:creator_user_id
    t.integer  	:available_spots

     t.timestamps	
    end
  end
end
