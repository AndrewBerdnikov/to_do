class TasksController < ApplicationController
  before_action :set_task, only: %i[update destroy edit]

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to tasks_path
    else
      flash.now[:alert] = "Incorrect parameters for the task"

      render :new
    end
  end

  def update 
    @task.update(task_params)

    redirect_to tasks_path
  end

  def destroy
    @task.destroy

    redirect_to tasks_path
  end

  def index
    @tasks = Task.where(user_id: (current_user.id if user_signed_in?))
  end

  def new 
    @task = Task.new
  end

  def edit
  end

  private 

  def task_params
    params.require(:task).permit(:body).merge(user_id: current_user.id, completed: false)
  end

  def set_task
    @task = Task.find(params[:id])
  end

end
