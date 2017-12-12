class BoardUsersController < ApplicationController
  include Response

  def index
    @board = Board.find(params[:board_id])
    json_response(@board.users)
  end


  def create
    @board = Board.find(params[:board_id])
    @user = User.find(params[:user_id])
    BoardUser.create!(user_id: @user.id, board_id: @board.id)
  end
end
