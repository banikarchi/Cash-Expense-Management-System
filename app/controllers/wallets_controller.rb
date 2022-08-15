class WalletsController < ApplicationController
  before_action :set_wallet, only: %i[ show edit update destroy ]

  
  def index
    @user=current_user
    if @user.is_admin==true
      @wallets=Wallet.all
    else
      @walletz = @user.wallet.all
    end
  end

  
  def show
  end

  
  def new
    @wallet = Wallet.new
  end

 
  def edit
  end
  

  
  def create
    @wallet = Wallet.new(wallet_params)

    respond_to do |format|
      if @wallet.save
        format.html { redirect_to wallet_url(@wallet), notice: "Wallet was successfully created." }
        
      else
        format.html { render :new, status: :unprocessable_entity }
        
      end
    end
  end

  
  def update
    respond_to do |format|
      if @wallet.update(wallet_params)
        format.html { redirect_to wallet_url(@wallet), notice: "Wallet was successfully updated." }
        
      else
        format.html { render :edit, status: :unprocessable_entity }
        
      end
    end
  end

  
  def destroy
    @wallet.destroy

    respond_to do |format|
      format.html { redirect_to wallets_url, notice: "Wallet was successfully destroyed." }
      
    end
  end

  private
    
    def set_wallet

      @wallet = Wallet.find(params[:id])
    end

    
    def wallet_params
      params.require(:wallet).permit(:amount, :month,:user_id)
    end
end
