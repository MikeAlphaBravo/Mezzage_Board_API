class BoardUsersController < ApplicationController
  include Response

  def index
    if params[:board_id]
      @board = Board.find(params[:board_id])
      json_response(@board.users)
    elsif params[:user_id]
      @user = User.find(params[:user_id])
      json_response(@user.boards)
    end
  end


  def create
    @board = Board.find(params[:board_id])
    @user = User.find(params[:user_id])
    BoardUser.create!(user_id: @user.id, board_id: @board.id)
  end
end
