class BiblesController < ApplicationController
  before_action :set_bible, only: %i[ show update destroy ]

  # GET /bibles
  def index
    @bibles = Bible.all

    render json: @bibles
  end

  # GET /bibles/1
  def show
    render json: @bible
  end

  # POST /bibles
  def create
    @bible = Bible.new(bible_params)

    if @bible.save
      render json: @bible, status: :created, location: @bible
    else
      render json: @bible.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bibles/1
  def update
    if @bible.update(bible_params)
      render json: @bible
    else
      render json: @bible.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bibles/1
  def destroy
    @bible.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bible
      @bible = Bible.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bible_params
      params.require(:bible).permit(:book, :Chapters, :Verse)
    end
end
