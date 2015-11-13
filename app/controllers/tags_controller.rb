class TagsController < ApplicationController

  # def new
  #   @post = Post.find(params[:post_id])
  #   @tag = @post.tags.new
  # end
  #
  # def create
  #   @post = Post.find(params[:post_id])
  #   @category = Category.find_or_create_by(name: params[:category_name])
  #
  #   existing_tag = Tag.find_by(post: @post, category: @category)
  #   unless existing_tag
  #     @post.tags.create(category: @category)
  #   end
  #   redirect_to post_path(@post)
  # end
  #
  #
  # def new
  #   @board = Board.find(params[:board_id])
  #   @pin = @board.pins.find(params[:pin_id])
  #   @tag = Tag.new
  # end
  #
  # def create
  #   @board = Board.find(params[:board_id])
  #   @pin = @board.pins.find(params[:pin_id])
  #   existing_tag = Tag.find_by(pin: @pin, user:current_user,body:@caption)
  #   unless existing_tag
  #     @pin.tags.create(body:@caption)
  #   end
  #   # caption = caption_params
  #   # caption[:user] = current_user
  #   # @caption = @pin.tags.create(caption)
  #   redirect_to board_path(@board)
  # end



end
