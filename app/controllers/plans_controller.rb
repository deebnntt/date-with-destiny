class PlansController < ApplicationController

  def show
    find_plan
  end

  def new
    @plan = Plan.new(venue_id: params[:venue_id])
  end

  def create
    @plan = Plan.new(plan_params)
    byebug
    # @plan.user_id =  #use sessions
    if @plan.save
      redirect_to plan_path(@plan)
    else
      render :new
    end
  end

  def edit
    find_plan
  end

  def update
    find_plan
    if @plan.update(plan_params)
      redirect_to plan_path(@plan)
    else
      render :edit
    end
  end

  private

  def find_plan
    @plan = Plan.find_by(id: params[:id])
  end

  def plan_params
    params.require(:plan).permit(:date, :venue_id)
  end

end
