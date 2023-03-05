class Emt::InstrumentsController < ApplicationController
  before_action :set_instrument, only: %i[ show edit update destroy ]

  def index
    @instruments = Instrument.all
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instrument
      @instrument = Instrument.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def instrument_params
      params.require(:instrument).permit(:status, :title, :content)
    end
end
