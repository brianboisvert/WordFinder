class RhymesController < ApplicationController
  before_action :set_rhyme, only: [:show, :update, :destroy]

  # GET /rhymes
  def index
    @rhymes = Rhyme.all

    render json: @rhymes
  end

  # GET /rhymes/1
  def show
    render json: @rhyme
  end

  # POST /rhymes
  def create
    @rhyme = Rhyme.new(rhyme_params)
    # @rhymes_with = @rhyme.word

    if @rhyme.save
      render json: @rhyme.word.to_phrase.flat_rhymes, status: :created, location: @rhyme
    else
      render json: @rhyme.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rhymes/1
  def update
    if @rhyme.update(rhyme_params)
      render json: @rhyme
    else
      render json: @rhyme.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rhymes/1
  def destroy
    @rhyme.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rhyme
      @rhyme = Rhyme.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rhyme_params
      params.require(:rhyme).permit(:word)
    end
end
