class CaptionsController < ApplicationController
  before_action :authenticate_user!


#   board_pin_captions GET    /boards/:board_id/pins/:pin_id/captions(.:format)          captions#index
#                    POST   /boards/:board_id/pins/:pin_id/captions(.:format)          captions#create
# new_board_pin_caption GET    /boards/:board_id/pins/:pin_id/captions/new(.:format)      captions#new
# edit_board_pin_caption GET    /boards/:board_id/pins/:pin_id/captions/:id/edit(.:format) captions#edit
#  board_pin_caption GET    /boards/:board_id/pins/:pin_id/captions/:id(.:format)      captions#show
#                    PATCH  /boards/:board_id/pins/:pin_id/captions/:id(.:format)      captions#update
#                    PUT    /boards/:board_id/pins/:pin_id/captions/:id(.:format)      captions#update
#                    DELETE /boards/:board_id/pins/:pin_id/captions/:id(.:format)      captions#destroy

  def index
    @board = Board.find(params[:board_id])
    redirect_to board_path(@board)
  end

  def create
    @board = Board.find(params[:board_id])
    @pin = @board.pins.find(params[:pin_id])
    @caption = Caption.find_or_create_by(caption_params)

    existing_tag = Tag.find_by(pin: @pin, user:current_user.id, caption:@caption)
    unless existing_tag
      Tag.create(pin:@pin,user:current_user,caption:@caption)
    end
    redirect_to board_path(@board)
  end

  def new
    @board = Board.find(params[:board_id])
    @pin = @board.pins.find(params[:pin_id])
    @board = Board.find(params[:board_id])
    @caption = Caption.new
  end

  private
  def caption_params
    params.require(:caption).permit(:body)
  end

end
