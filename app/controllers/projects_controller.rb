class ProjectsController < ApplicationController
	def show
        @projects = Project.all
    end
    
    def new
        @project = Project.new
    end
    
    def create
        @project = Project.new(project_params)
        # remember the needed connection creator_user
        @project.creator_user_id = current_user.id
        if @project.save
            redirect_to @project
            flash[:notice] = "project created!"
        else
            redirect_back(fallback_location: root_path)
            flash[:alart] = "project creation failed"
        end    
    end
    
    def show
        @project = Project.find(params[:id])
    end
    
    def destroy
        project =Project.find(params[:id])
      
        if current_user == Project.user
            project.destroy
            redirect_to "/projects"
            flash[:notice] = "project destroyed"
        else    
            redirect_back(fallback_location: root_path)
            flash[:alert] = "Not autorized to delete project"
        end    
    end
    
    def edit
        @project = Project.find(params[:id])
        if current_user != @project.user
        redirect_back(fallback_location: root_path)
        flash[:alert] = "Not autorized to edit project"
        end
    end
    
    def update
        project = Project.find(params[:id])
        if current_user == project.user
            project.update(update_params)
            redirect_to project
            flash[:notice] = "project updated"
        else    
            redirect_back(fallback_location: root_path)
            flash[:alert] = "Not autorized to edit project"
        end    
    end
    
    
    
    private
    def project_params
        params.require(:project).permit(:caption,:pic)
    end
    def update_params
        params.require(:project).permit(:caption)
    end
end