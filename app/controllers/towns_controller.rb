class TownsController < ProtectedController
  before_action :set_town, only: [:show, :update, :destroy]

  # GET /towns
  def index
    @towns = current_user.towns

    render json: @towns
  end

  # GET /towns/1
  def show
    render json: @town
  end

  # POST /towns
  def create
    @town = current_user.towns.build(town_params)

    if @town.save
      render json: @town, status: :created, location: @town
    else
      render json: @town.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /towns/1
  def update
    if @town.update(town_params)
      render json: @town
    else
      render json: @town.errors, status: :unprocessable_entity
    end
  end

  # DELETE /towns/1
  def destroy
    @town.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_town
      @town = current_user.towns.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def town_params
      params.require(:town).permit(:name, :town_fruit, :mayor, :user_id)
    end
end
