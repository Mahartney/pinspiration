class BoardsController < ApplicationController
  before_action :authenticate_user!
  #    boards GET    /boards(.:format)                         boards#index
  #              POST   /boards(.:format)                         boards#create
  #    new_board GET    /boards/new(.:format)                     boards#new
  #   edit_board GET    /boards/:id/edit(.:format)                boards#edit
  #        board GET    /boards/:id(.:format)                     boards#show
  #              PATCH  /boards/:id(.:format)                     boards#update
  #              PUT    /boards/:id(.:format)                     boards#update
  #              DELETE /boards/:id(.:format)                     boards#destroy

  def index
    @boards = Board.all
  end

  def create
    @user = current_user
    @board = @user.boards.create(board_params)
    redirect_to boards_path
  end

  def new
    @board = Board.new
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    @board = Board.update
    redirect to boards_path
  end

  def show
    @board = Board.find(params[:id])
  end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy

    redirect_to boards_path
  end

  private

  def board_params
    params.require(:board).permit(:title)
  end





end
