class VersesController < ApplicationController
  before_action :set_verse, only: %i[ show update destroy ]

  # GET /verses
  def index
    @verses = User.find(params["user_id"]).verses
    render json: @verses
  end

  # GET /verses/1
  def show
    render json: @verse
  end

  # POST /verses
  def create
    @verse = Verse.new(verse_params)

    if @verse.save
      render json: @verse, status: :created, location: @verse
    else
      render json: @verse.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /verses/1
  def update
    if @verse.update(verse_params)
      render json: @verse
    else
      render json: @verse.errors, status: :unprocessable_entity
    end
  end

  # DELETE /verses/1
  def destroy
    @verse.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_verse
      @verse = Verse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def verse_params
      params.permit(:verse, :details, :user_id)
    end
end
