class TasksController < ApplicationController
  before_action 

  def create
    Task.create(
      body: params[:task][:body],
      user_id: current_user.id,
      completed: false
    )

    redirect_to tasks_path
  end

  def update 
    @task = Task.find(params[:id])
    @task.update(
      body: params[:task][:body],
      user_id: current_user.id,
      completed: false
    )

    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
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
    @task = Task.find(params[:id])
  end
end
