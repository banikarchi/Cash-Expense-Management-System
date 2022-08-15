class BudgetplanersController < ApplicationController
  before_action :set_budgetplaner, only: %i[ show edit update destroy ]

  # GET /budgetplaners or /budgetplaners.json
  def index
    @user=current_user
    if @user.is_admin==true
      @budgetplaners = Budgetplaner.all
    else
      @budgetplanerz= @user.budgetplaner.all
    end

  end

  # GET /budgetplaners/1 or /budgetplaners/1.json
  def show
  end

  # GET /budgetplaners/new
  def new
    @budgetplaner = Budgetplaner.new
  end

  # GET /budgetplaners/1/edit
  def edit
  end

  # POST /budgetplaners or /budgetplaners.json
  def create
    @budgetplaner = Budgetplaner.new(budgetplaner_params)

    respond_to do |format|
      if @budgetplaner.save
        format.html { redirect_to budgetplaner_url(@budgetplaner), notice: "Budgetplaner was successfully created." }
        
      else
        format.html { render :new, status: :unprocessable_entity }
        
      end
    end
  end

  # PATCH/PUT /budgetplaners/1 or /budgetplaners/1.json
  def update
    respond_to do |format|
      if @budgetplaner.update(budgetplaner_params)
        format.html { redirect_to budgetplaner_url(@budgetplaner), notice: "Budgetplaner was successfully updated." }
        
      else
        format.html { render :edit, status: :unprocessable_entity }
        
      end
    end
  end

  # DELETE /budgetplaners/1 or /budgetplaners/1.json
  def destroy
    @budgetplaner.destroy

    respond_to do |format|
      format.html { redirect_to budgetplaners_url, notice: "Budgetplaner was successfully destroyed." }
      
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_budgetplaner
      @budgetplaner = Budgetplaner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def budgetplaner_params
      params.require(:budgetplaner).permit(:category, :subcategory, :amount, :notes, :month,:user_id)
    end
end
