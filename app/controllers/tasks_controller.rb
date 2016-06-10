class TasksController < ApplicationController
  
  def create
    @task = Task.new(params_task)
    if @task.save
      redirect_to project_path(@task.project_id), notice: "Successfully created the task"
    end
  end
  
  def mark_as_complete
    @task = Task.find(params[:task_id])
    @task.update_attributes(is_completed: true)
    Notification.task_completed(@task).deliver!
    redirect_to :back
  end
  
  def mark_as_incomplete
    @task = Task.find(params[:task_id])
    @task.update_attributes(is_completed: false)
    Notification.task_incomplete(@task).deliver!
    redirect_to :back
  end
  
  private
  def params_task
    params.require(:task).permit(:name, :due_date, :is_completed, :project_id)
  end
end
