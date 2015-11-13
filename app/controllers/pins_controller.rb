class PinsController < ApplicationController

#   board_pins GET    /boards/:board_id/pins(.:format)          pins#index
#            POST   /boards/:board_id/pins(.:format)          pins#create
# new_board_pin GET    /boards/:board_id/pins/new(.:format)      pins#new
# edit_board_pin GET    /boards/:board_id/pins/:id/edit(.:format) pins#edit
#  board_pin GET    /boards/:board_id/pins/:id(.:format)      pins#show
#            PATCH  /boards/:board_id/pins/:id(.:format)      pins#update
#            PUT    /boards/:board_id/pins/:id(.:format)      pins#update
#            DELETE /boards/:board_id/pins/:id(.:format)      pins#destroy

  def index
    @board = Board.find(params[:board_id])
    redirect_to board_path(@board)
  end

  def create
    @board = current_user.boards.find(params[:board_id])
    pin = pin_params
    pin[:user] = current_user
    @pin = @board.pins.create(pin)
    redirect_to board_path(@board)
  end

  def new
    @board = Board.find(params[:board_id])
    @pin = Pin.new
  end

  def edit
    @board = Board.find(params[:board_id])
    @pin = Pin.find(params[:id])
  end

  def update
    @board = Board.find(params[:board_id])
  end

  def destroy
    @board = Board.find(params[:board_id])
    @pin = Pin.find(params[:id])
    @pin.destroy
    redirect_to board_path(@board)
  end


  private
  def pin_params
    params.require(:pin).permit(:title,:image_url)
  end


end
