class TodosController < ApplicationController
  before_action :load_todo, only: :update
  
  def update
    if @todo.update(todo_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def load_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:text, :is_completed)
  end
end
