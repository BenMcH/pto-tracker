class TimeOffInstancesController < ApplicationController
  before_action :set_time_off_instance, only: [:show, :edit, :update, :destroy]

  # GET /time_off_instances
  # GET /time_off_instances.json
  def index
    @time_off_instances = TimeOffInstance.all
  end

  # GET /time_off_instances/1
  # GET /time_off_instances/1.json
  def show
  end

  # GET /time_off_instances/new
  def new
    @time_off_instance = TimeOffInstance.new
  end

  # GET /time_off_instances/1/edit
  def edit
  end

  # POST /time_off_instances
  # POST /time_off_instances.json
  def create
    @time_off_instance = TimeOffInstance.new(time_off_instance_params)
    #@time_off_instance.employee.hours_left -= @time_off_instance.hours_used
    respond_to do |format|
      if @time_off_instance.save
        @time_off_instance.employee.hours_left -= @time_off_instance.hours_used
        @time_off_instance.employee.save
        print "HERE HERE  HERE HERE HERE HERE HERE HERE HERE HERE HERE HERE HERE HERE HERE HERE HERE HERE HERE HERE HERE HERE HERE HERE"
        format.html { redirect_to @time_off_instance, notice: 'Time off instance was successfully created.' }
        format.json { render :show, status: :created, location: @time_off_instance }
      else
        format.html { render :new }
        format.json { render json: @time_off_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /time_off_instances/1
  # PATCH/PUT /time_off_instances/1.json
  def update
    respond_to do |format|
      if @time_off_instance.update(time_off_instance_params)
        format.html { redirect_to @time_off_instance, notice: 'Time off instance was successfully updated.' }
        format.json { render :show, status: :ok, location: @time_off_instance }
      else
        format.html { render :edit }
        format.json { render json: @time_off_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_off_instances/1
  # DELETE /time_off_instances/1.json
  def destroy
    @time_off_instance.destroy
    respond_to do |format|
      format.html { redirect_to time_off_instances_url, notice: 'Time off instance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_off_instance
      @time_off_instance = TimeOffInstance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def time_off_instance_params
      params.require(:time_off_instance).permit(:employee_id, :hours_used)
    end
end
