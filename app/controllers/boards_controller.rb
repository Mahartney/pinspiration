class BoardsController < ApplicationController

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

  end

  def new

  end

  def edit

  end

  def update

  end

  def show

  end

  def destroy

  end




end
