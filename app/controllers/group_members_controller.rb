class GroupMembersController < ApplicationController
	def create
		GroupMember.create(project_id: params[:project_id], user_id: current_user.id)
		redirect_to "/projects/#{params[:project_id]}"
		proj = Project.find(params[:project_id])
		flash[:notice] = "You have joined project #{proj.name}"
	end


 end