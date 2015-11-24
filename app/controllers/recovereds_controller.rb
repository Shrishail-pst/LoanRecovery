class RecoveredsController < ApplicationController
  before_action :set_recovered, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @recovereds = Recovered.all
    respond_with(@recovereds)
  end

  def show
    respond_with(@recovered)
  end

  def new
    @recovered = Recovered.new
    respond_with(@recovered)
  end

  def edit
  end

  def create
    @recovered = Recovered.new(recovered_params)
    @recovered.save
    respond_with(@recovered)
  end

  def update
    @recovered.update(recovered_params)
    respond_with(@recovered)
  end

  def destroy
    @recovered.destroy
    respond_with(@recovered)
  end

  private
    def set_recovered
      @recovered = Recovered.find(params[:id])
    end

    def recovered_params
      params.require(:recovered).permit(:recovered_amount, :recovery_time, :recovery_charges)
    end
end
