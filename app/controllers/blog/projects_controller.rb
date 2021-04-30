module Blog
  class ProjectsController < BlogController
    
    # GET /projects or /projects.json
    def index
      @project = Project.most_recent
    end

    # GET /projects/1 or /projects/1.json
    def show
      @project = Project.friendly.find(params[:id])
    end
  end
end
