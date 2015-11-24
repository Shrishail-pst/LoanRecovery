class LoanrecoveriesController < ApplicationController
  before_action :set_loanrecovery, only: [:show, :edit, :update, :destroy]
  def import
  Loanrecovery.import(params[:file])
  redirect_to loanrecoveries_path, notice: "Defaulter imported."
end

  # GET /loanrecoveries
  # GET /loanrecoveries.json
  def index
   @loanrecoveries = Loanrecovery.all
           #@loanrecoveries = Loanrecovery.where("bank_id= ?", params[:banks])
        #@loanrecoveries = Loanrecovery.joins(:banks).where("banks.id = 1")


  end

  # GET /loanrecoveries/1
  # GET /loanrecoveries/1.json
  def show
  end

  # GET /loanrecoveries/new
  def new
    @loanrecovery = Loanrecovery.new

  end

  # GET /loanrecoveries/1/edit
  def edit
  end



  # POST /loanrecoveries
  # POST /loanrecoveries.json
  def create
    @loanrecovery = Loanrecovery.new(loanrecovery_params)

    respond_to do |format|
      if @loanrecovery.save
        format.html { redirect_to @loanrecovery, notice: 'Defaulter was successfully created.' }
        format.json { render :show, status: :created, location: @loanrecovery }
      else
        format.html { render :new }
        format.json { render json: @loanrecovery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loanrecoveries/1
  # PATCH/PUT /loanrecoveries/1.json
  def update
    respond_to do |format|
      if @loanrecovery.update(loanrecovery_params) 
        format.html { redirect_to @loanrecovery, notice: 'Defaulter was successfully updated.' }
        format.json { render :show, status: :ok, location: @loanrecovery }


      else
        format.html { render :edit }
        format.json { render json: @loanrecovery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loanrecoveries/1
  # DELETE /loanrecoveries/1.json
  def destroy
    @loanrecovery.destroy
    respond_to do |format|
      format.html { redirect_to loanrecoveries_url, notice: 'Defaulter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loanrecovery
      @loanrecovery = Loanrecovery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loanrecovery_params
      params.require(:loanrecovery).permit(:name, :phone, :address, :email, :status, :bankname)
    end
end
