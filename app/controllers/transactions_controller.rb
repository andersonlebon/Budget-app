class TransacsController < ApplicationController
  def index
    @transacs = current_user.categories.find(params[:category_id]).transacs
  end

  def show
        @transacs = current_user.categories.find(params[:category_id]).transacs.find(params[:transac_id])
  end

  def new
    @transac = current_user.categories.find(params[:category_id]).transacs.new
  end

  def create
    @transac = current_user.categories.find(params[:category_id]).transacs.create(transac_params)
    if @transac.save
      redirect_to category_transacs_path(@transac.category_id)
    else
      render :new
    end
  end

  def destroy
    @transac = current_user.categories.find(params[:category_id]).transacs.find(params[:transac_id])
    @transac.destroy
    redirect_to category_transacs_path(@transac.category_id)
  end
    @transac.destroy
    redirect_to category_transacs_path(@transac.category_id)
  end

  private

  def transac_params
    params.require(:transac).permit(:amount, :name,  :category_id)
  end 
end
