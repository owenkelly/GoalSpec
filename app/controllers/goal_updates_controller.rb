class GoalUpdatesController < ApplicationController
  before_action :set_goal_update, only: [:show, :edit, :update, :destroy]

  before_action :set_goal

  before_action :authenticate_user!
  # GET /goal_updates
  # GET /goal_updates.json
  def index
    @goal_updates = GoalUpdate.where(goal_id: @goal.id)
  end

  # GET /goal_updates/1
  # GET /goal_updates/1.json
  def show
  end

  # GET /goal_updates/new
  def new
    @goal_update = GoalUpdate.new
  end

  # GET /goal_updates/1/edit
  def edit
  end

  # POST /goal_updates
  # POST /goal_updates.json
  def create
    @goal_update = GoalUpdate.new(goal_update_params)

    respond_to do |format|
      if @goal_update.save
        format.html { redirect_to [@goal, @goal_update], notice: 'Goal update was successfully created.' }
        format.json { render :show, status: :created, location: @goal_update }
      else
        format.html { render :new }
        format.json { render json: @goal_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goal_updates/1
  # PATCH/PUT /goal_updates/1.json
  def update
    respond_to do |format|
      if @goal_update.update(goal_update_params)
        format.html { redirect_to [@goal, @goal_update], notice: 'Goal update was successfully updated.' }
        format.json { render :show, status: :ok, location: @goal_update }
      else
        format.html { render :edit }
        format.json { render json: @goal_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goal_updates/1
  # DELETE /goal_updates/1.json
  def destroy
    @goal_update.destroy
    respond_to do |format|
      format.html { redirect_to goal_goal_updates_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal_update
      @goal_update = GoalUpdate.find(params[:id])
    end

    def set_goal
      @goal = Goal.find(params[:goal_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goal_update_params
      params.require(:goal_update).permit(:goal_id, :entry, :update_date)
    end
end
