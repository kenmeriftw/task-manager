class TodosController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @todos = Todo.all
    render json: @todos
  end

  def show
    @todo = Todo.find(params[:id])
    render json: @todo
  end

  def create
    @todo = Todo.new(text: params[:text], is_completed: params[:is_completed], project_id: params[:project_id])
      if @todo.save
        render json: @todo, status: :created
        @project = Project.find(@todo.project_id)
      else
        render json: @todo.errors, status: :unprocessable_entity
      end
  end

  def update
    @todo = Todo.find(params[:id])
    if(params.has_key?(:is_completed))
      @todo.update(is_completed: params[:is_completed])
    end
  end
end
