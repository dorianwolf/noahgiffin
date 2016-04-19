class Admin::StudioClientsController < AdminController
  before_action :set_studio_client, only: [:show, :edit, :update, :destroy]

  # GET /studio_clients
  # GET /studio_clients.json
  def index
    @studio_clients = StudioClient.all
    @tracks = Track.all
  end

  # GET /studio_clients/1
  # GET /studio_clients/1.json
  def show
    @track = Track.new
  end

  # GET /studio_clients/new
  def new
    @studio_client = StudioClient.new
  end

  # GET /studio_clients/1/edit
  def edit
    @track = Track.new
  end

  # POST /studio_clients
  # POST /studio_clients.json
  def create
    @studio_client = StudioClient.new(studio_client_params)

    respond_to do |format|
      if @studio_client.save
        format.html { redirect_to edit_admin_studio_client_path(@studio_client), notice: 'Saved.' }
        format.json { render :show, status: :created, location: @studio_client }
      else
        format.html { render :new }
        format.json { render json: @studio_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studio_clients/1
  # PATCH/PUT /studio_clients/1.json
  def update

    respond_to do |format|
      if @studio_client.update(studio_client_params)
        format.html { redirect_to edit_admin_studio_client_path(@studio_client), notice: 'Saved.' }
        format.json { render :show, status: :ok, location: @studio_client }
      else
        Rails.logger.info(@studio_client.errors.inspect)
        format.html { render :edit }
        format.json { render json: @studio_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studio_clients/1
  # DELETE /studio_clients/1.json
  def destroy
    @studio_client.destroy
    respond_to do |format|
      format.html { redirect_to studio_clients_url, notice: 'Deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studio_client
      @studio_client = StudioClient.find(params[:id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_track
      @track = Track.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def studio_client_params
      params.require(:studio_client).permit(:artist, :image, :remote_image_url, :album, :role, :soundcloud)
    end
end
