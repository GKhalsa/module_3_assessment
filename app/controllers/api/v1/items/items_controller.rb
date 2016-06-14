class Api::V1::Items::ItemsController < Api::ApiController

  def index
    respond_with Item.all
  end

  def show
    respond_with Item.find(params[:id])
  end

  def create

  end

  def destroy

  end
  
end
