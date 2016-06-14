class Api::V1::Items::ItemsController < Api::ApiController

  def index
    respond_with Item.all
  end

end
