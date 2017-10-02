class PlansController < ApplicationController

  def show
    find_plan
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)
    @plan.user_id =  #use sessions
    @plan.venue_id = Foursquare.find_venue(params.permit(:zipcode))
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
    @plan = Plan.find_by(params[:id])
  end

  def plan_params
    params.require(:plan).permit(:date)
  end

end
