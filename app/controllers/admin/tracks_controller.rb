class Admin::TracksController < ApplicationController
  before_action :set_track, only: [:show, :edit, :update, :destroy]

  # GET /tracks
  # GET /tracks.json
  def index
    @tracks = Track.all
  end

  # GET /tracks/1
  # GET /tracks/1.json
  def show
    redirect_to studio_clients_path
  end

  # GET /tracks/new
  def new
    @track = Track.new
  end

  # GET /tracks/1/edit
  def edit
  end

  # POST /tracks
  # POST /tracks.json
  def create
    @track = Track.new(track_params)

    respond_to do |format|
      if @track.save
        format.html { redirect_to edit_admin_studio_client_path(@track.studio_client_id), notice: 'Track was successfully added.' }
        format.json { render :show, status: :created, location: @track }
      else
        format.html { redirect_to edit_admin_studio_client_path(@track.studio_client_id), notice: "You need to include a title for the track" }
        format.json { render json: @track.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tracks/1
  # PATCH/PUT /tracks/1.json
  def update
    respond_to do |format|
      if @track.update(track_params)
        format.html { redirect_to edit_admin_studio_client_path(@track.studio_client_id), notice: 'Live client was successfully updated.' }
        format.json { render :show, status: :ok, location: @track }
      else
        format.html { redirect_to edit_admin_studio_client_path(@track.studio_client_id), notice: 'Didnt save edit for some reason' }
        format.json { render json: @track.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tracks/1
  # DELETE /tracks/1.json
  def destroy
    @track.destroy
    respond_to do |format|
      format.html { redirect_to edit_admin_studio_client_path(@track.studio_client_id), notice: 'Track deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_track
      @track = Track.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def track_params
      params.require(:track).permit(:title, :studio_client_id)
    end
end
