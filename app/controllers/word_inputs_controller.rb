class WordInputsController < ApplicationController
  before_action :set_word_input, only: [:show, :update, :destroy]

  # GET /word_inputs
  def index
    @word_inputs = WordInput.all

    render json: @word_inputs
  end

  # GET /word_inputs/1
  def show
    render json: @word_input
  end

  # POST /word_inputs
  def create
    @word_input = WordInput.new(word_input_params)

    if @word_input.save
      render json: @word_input, status: :created, location: @word_input
    else
      render json: @word_input.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /word_inputs/1
  def update
    if @word_input.update(word_input_params)
      render json: @word_input
    else
      render json: @word_input.errors, status: :unprocessable_entity
    end
  end

  # DELETE /word_inputs/1
  def destroy
    @word_input.destroy
  end

  def random
    @word_input = WordInput.all.sample(1)

    render json: @word_input
  end

  def delete_all
    WordInput.delete_all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word_input
      @word_input = WordInput.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def word_input_params
      params.permit(:word)
    end
end
