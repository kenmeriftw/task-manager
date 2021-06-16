class TodosController < ApplicationController
  before_action :set_todo, only: %w[show update]
  skip_before_action :verify_authenticity_token

  def index
    @todos = Todo.all
    render json: @todos
  end

  def show
    render json: @todo
  end

  def create
    project = Project.find_or_create_by!(title: params[:project_title])

    @todo = Todo.new(text: params[:text], is_completed: params[:is_completed], project_id: project.id)
      if @todo.save
        render json: @todo, status: :created
      else
        render json: @todo.errors, status: :unprocessable_entity
      end
  end

  def update
    if(params.has_key?(:is_completed))
      @todo.update(is_completed: params[:is_completed])
    end
  end

  private

  def set_todo
    @todo = Todo.find(params[:id])
  end
end
