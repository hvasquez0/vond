class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|

    	t.string :username
    	t.string :email
    	t.integer :phone
    	t.string :profession
    	t.integer :experience_level
    	t.text :further_information
    	t.integer :group_id

    	t.timestamps
    end
  end
end
