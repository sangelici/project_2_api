class ResidentsController < ProtectedController
  before_action :set_resident, only: [:show, :update, :destroy]

  # GET /residents
  def index
    @residents = current_user.residents

    render json: @residents
  end

  # GET /residents/1
  def show
    render json: @resident
  end

  # POST /residents
  def create
    @resident = current_user.residents.build(resident_params)

    if @resident.save
      render json: @resident, status: :created, location: @resident
    else
      render json: @resident.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /residents/1
  def update
    if @resident.update(resident_params)
      render json: @resident
    else
      render json: @resident.errors, status: :unprocessable_entity
    end
  end

  # DELETE /residents/1
  def destroy
    @resident.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resident
      @resident = current_user.residents.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def resident_params
      params.require(:resident).permit(:name, :animal_type, :birthday, :hobby, :town_id)
    end
end
