class TasksController < ApplicationController
  before_action :set_task, only: [:delete]

  def index
    @tasks = Task.all
    flash.now[:notice] = "Toplam #{@tasks.size} göreviniz var."
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      flash[:notice] = 'Aynı isimde bir göreviniz var.'
    end
  end

  def delete
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:name, :content, :deadline, :done)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
