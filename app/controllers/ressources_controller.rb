class RessourcesController < ApplicationController
  before_action :set_ressource, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /ressources
  # GET /ressources.json
  def index
    @ressources = Ressource.all
  end

  # GET /ressources/1
  # GET /ressources/1.json
  def show
  end

  # GET /ressources/new
  def new
    @ressource = Ressource.new
    @projects = Project.all
  end

  # GET /ressources/1/edit
  def edit
  end

  # POST /ressources
  # POST /ressources.json
  def create
    @ressource = Ressource.new(ressource_params)
    @ressource.user_id = current_user.id


    respond_to do |format|
      if @ressource.save
        format.html { redirect_to @ressource, notice: 'Ressource was successfully created.' }
        format.json { render :show, status: :created, location: @ressource }
      else
        binding.pry
        format.html { render :new }
        format.json { render json: @ressource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ressources/1
  # PATCH/PUT /ressources/1.json
  def update
    respond_to do |format|
      if @ressource.update(ressource_params)
        format.html { redirect_to @ressource, notice: 'Ressource was successfully updated.' }
        format.json { render :show, status: :ok, location: @ressource }
      else
        format.html { render :edit }
        format.json { render json: @ressource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ressources/1
  # DELETE /ressources/1.json
  def destroy
    @ressource.destroy
    respond_to do |format|
      format.html { redirect_to ressources_url, notice: 'Ressource was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ressource
      @ressource = Ressource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ressource_params
      params.require(:ressource).permit(:name, :description, :url, :tag_list, :project_ids => [])
    end
end
