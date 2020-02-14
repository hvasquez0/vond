class Project < ApplicationRecord
    belongs_to :creator_user, class_name: "User"
    has_many :group_members
    has_many :users, through: :group_members
 end 