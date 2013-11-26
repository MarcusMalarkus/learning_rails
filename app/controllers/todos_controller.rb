class TodosController < ApplicationController

  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todos_params)
    if @todo.save
      flash[:notice] = 'Todo created successfully.'
      redirect_to root_path
    else
      render :new, notice: 'Invalid todo.'
    end
  end

  def status
    binding.pry
    render json: { success: true }
  end

  private

  def todos_params
    params.require(:todo).permit(:title, :body, :complete)
  end
end
