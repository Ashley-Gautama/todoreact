class TasksController < ApplicationController
  def index
    @tasks=Task.order(created_at: :asc)
    render json: {tasks: @tasks}
  end


  def create
    if @task.create(task_params)
      render json:{task: @task, location:task_url(@task)}
    else
      render json: {errors: @task.errors}, status: :unprocessible_entity # 422
    end
  end

  def show
    @task=Task.find(params[:id])
    render json:{task: @task}

  end

  def update
    if
      @task=Task.find(params[:id])
      @task.update(task_params)
      render json:{task: @task}, status:   :accepted # 202
    else
      render json: {errors: @task.errors}, status: :unprocessible_entity # 422
    end
  end

def destroy
  if
    @task.find:params[:id]
    @task.destroy
    render json: {task: nil}, status: :accepted #202
  end
    render json: {errors: @task.errors}, status: :unprocessible_entity # 422
end

protected
  def task_params
    params.require(:task).permit(:title, :completed)
  end

end
