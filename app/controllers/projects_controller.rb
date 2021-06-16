class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    render json: @projects, include: :todos
  end

  def show
    @project = Project.find(params[:id])
    render json: @project, include: :todos
  end

  def create
    @project = Project.new(title: params[:title])
    if @project.save
      render json: @project, status: :created
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end
end
