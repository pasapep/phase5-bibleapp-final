class TablebooksController < ApplicationController
  before_action :set_tablebook, only: %i[ show update destroy ]

  # GET /tablebooks
  def index
    @tablebooks = Tablebook.all

    render json: @tablebooks
  end

  # GET /tablebooks/1
  def show
    render json: @tablebook
  end

  # POST /tablebooks
  def create
    @tablebook = Tablebook.new(tablebook_params)

    if @tablebook.save
      render json: @tablebook, status: :created, location: @tablebook
    else
      render json: @tablebook.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tablebooks/1
  def update
    if @tablebook.update(tablebook_params)
      render json: @tablebook
    else
      render json: @tablebook.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tablebooks/1
  def destroy
    @tablebook.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tablebook
      @tablebook = Tablebook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tablebook_params
      params.require(:tablebook).permit(:bible_id, :user_id, :date_started)
    end
end
