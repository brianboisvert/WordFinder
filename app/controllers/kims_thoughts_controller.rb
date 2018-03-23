class KimsThoughtsController < ApplicationController
  before_action :set_kims_thought, only: [:show, :update, :destroy]

  # GET /kims_thoughts
  # def index
  #   @kims_thoughts = KimsThought.all
  #
  #   render json: @kims_thoughts
  # end
  #
  # # GET /kims_thoughts/1
  # def show
  #   render json: @kims_thought
  # end
  #
  # # POST /kims_thoughts
  # def create
  #   @kims_thought = KimsThought.new(kims_thought_params)
  #
  #   if @kims_thought.save
  #     render json: @kims_thought, status: :created, location: @kims_thought
  #   else
  #     render json: @kims_thought.errors, status: :unprocessable_entity
  #   end
  # end

  # # PATCH/PUT /kims_thoughts/1
  # def update
  #   if @kims_thought.update(kims_thought_params)
  #     render json: @kims_thought
  #   else
  #     render json: @kims_thought.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /kims_thoughts/1
  # def destroy
  #   @kims_thought.destroy
  # end

  def real_talk
    @thought = KimsThought.all.sample
    render json: @thought
  end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_kims_thought
  #     @kims_thought = KimsThought.find(params[:id])
  #   end
  #
  #   # Only allow a trusted parameter "white list" through.
  #   def kims_thought_params
  #     params.require(:kims_thought).permit(:word)
  #   end
end
