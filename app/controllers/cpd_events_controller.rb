class CpdEventsController < ApplicationController
  before_action :set_cpd_event, only: [:show, :edit, :update, :destroy]

  # GET /cpd_events
  # GET /cpd_events.json
  def index
    @cpd_events = CpdEvent.all
  end

  # GET /cpd_events/1
  # GET /cpd_events/1.json
  def show
  end

  # GET /cpd_events/new
  def new
    @cpd_event = CpdEvent.new
  end

  # GET /cpd_events/1/edit
  def edit
  end

  # POST /cpd_events
  # POST /cpd_events.json
  def create
    @cpd_event = CpdEvent.new(cpd_event_params)

    respond_to do |format|
      if @cpd_event.save
        format.html { redirect_to @cpd_event, notice: 'Cpd event was successfully created.' }
        format.json { render :show, status: :created, location: @cpd_event }
      else
        format.html { render :new }
        format.json { render json: @cpd_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpd_events/1
  # PATCH/PUT /cpd_events/1.json
  def update
    respond_to do |format|
      if @cpd_event.update(cpd_event_params)
        format.html { redirect_to @cpd_event, notice: 'Cpd event was successfully updated.' }
        format.json { render :show, status: :ok, location: @cpd_event }
      else
        format.html { render :edit }
        format.json { render json: @cpd_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpd_events/1
  # DELETE /cpd_events/1.json
  def destroy
    @cpd_event.destroy
    respond_to do |format|
      format.html { redirect_to cpd_events_url, notice: 'Cpd event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpd_event
      @cpd_event = CpdEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpd_event_params
      params.require(:cpd_event).permit(:cpd_event_id, :name, :date, :description)
    end
end
