class GoalsController < ApplicationController
  load_and_authorize_resource
  before_action :set_goal, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!

  # GET /goals
  # GET /goals.json
  def index
    @goals = Goal.where(:user_id => current_user.id)
    @title = "Your Goals"
    @expand_subgoal = params[:expand_subgoal]
    @complete = params[:complete]
  end

  # GET /goals/1
  # GET /goals/1.json
  def show
    @title = "A Goal"
    render "show"
  end

  # GET /goals/new
  def new
    @goal = Goal.new(:user_id => params[:user_id].to_i)
    @title = 'New Goal'
    render "new"
  end

  # GET /goals/1/edit
  def edit
    @title = "Change your Goal"
    render "edit"
  end

  # POST /goals
  # POST /goals.json
  def create
    @goal = Goal.new(goal_params)

    respond_to do |format|
      if @goal.save
        format.html { redirect_to @goal, notice: 'Goal was successfully created.' }
        format.json { render :show, status: :created, location: @goal }
      else
        format.html { render :new }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goals/1
  # PATCH/PUT /goals/1.json
  def update
    respond_to do |format|
      if @goal.update(goal_params)
        format.html { redirect_to @goal, notice: 'Goal was successfully updated.' }
        format.json { render :show, status: :ok, location: @goal }
      else
        format.html { render :edit }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goals/1
  # DELETE /goals/1.json
  def destroy
    @goal.destroy
    respond_to do |format|
      format.html { redirect_to goals_path }
      format.json { head :no_content }
    end
  end


  def mark_complete
    @goal = Goal.find(params[:goal_id])
    @goal.update_attributes(complete: true)
    redirect_to goals_path
  end


  private

  
    # Use callbacks to share common setup or constraints between actions.
    def set_goal
      @goal = Goal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goal_params
      params.require(:goal).permit(:goal, :description, :start, :end, :user_id, supergoal_ids: [], subgoal_ids: [])
    end


end
