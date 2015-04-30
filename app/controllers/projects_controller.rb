class ProjectsController < ApplicationController
  before_action :find_project, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:index, :show]


  def index
    @projects = Project.all
  end

  def show
    @project_attachments = @project.project_attachments.all
  end

  def new
    @project = current_user.projects.build
    @project_attachments = @project.project_attachments.build
  end

  def create
    @project = current_user.projects.build(project_params)
    if @project.save
      params[:project_attachments]['image'].each do |a|
        @project_attachment = @project.project_attachments.create!(:image => a, :project_id => @project.id)
      end
      redirect_to @project
    else
      render 'new'
    end
  end

  def edit

  end

  def update

    if @project.update(project_params)
      params[:project_attachments]['image'].each do |a|
        @project_attachment = @project.project_attachments.create!(:image => a, :project_id => @project.id)
      end
      redirect_to @project
    else
      render 'edit'
    end
  end

  def destroy
    @project.destroy

    redirect_to projects_path
  end

  private
  def project_params
    params.require(:project).permit(:name, :description, :github_url, :project_url, project_attachments_attributes: [:id, :post_id, :image])

  end

  def find_project
    @project = Project.find(params[:id])
  end
end
