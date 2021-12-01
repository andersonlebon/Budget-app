class TransacsController < ApplicationController
  before_action :authenticate_user!
  def index
    @transacs = current_user.categories.find(params[:category_id]).transacs
  end

  def show
        @transacs = current_user.categories.find(params[:category_id]).transacs.find(params[:transac_id])
  end

  def new
    @categories = current_user.categories
    @transac = current_user.categories.find(params[:category_id]).transacs.new
  end

  def create
     @categories = current_user.categories
    @transac = @categories.find(params[:category_id]).transacs.create(transac_params)
    @transac.save
    redirect_to user_category_path(current_user, params[:category_id])
    # if @transac.save
    #   redirect_to user_category_path(current_user, )
    # else
    #   render :new
    # end
  end

  def destroy
    @transac = current_user.categories.find(params[:category_id]).transacs.find(params[:transac_id])
    @transac.destroy
    redirect_to category_transacs_path(@transac.category_id)
  end
 
  private

  def transac_params
    params.require(:transac).permit(:amount, :name,  :category_id)
  end 
end

