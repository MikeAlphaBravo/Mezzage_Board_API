class MezzagesController < ApplicationController
include Response
  def index
    @board = Board.find(params[:board_id])
    @mezzages = @board.mezzages.all
    json_response(@mezzages)
  end

  def show
    @mezzage = Mezzage.find(params[:id])
    json_response(@mezzage)
  end

  def create
    @user = User.find(params[:user_id])
    @board = Board.find(params[:board_id])
    @board_users = BoardUser.where(board_id: @board.id, user_id: @user.id)
    if @board_users.length > 0
    @mezzage = @board.mezzages.create!(mezzage_params)
    json_response(@mezzage, :created)
    else
      render status: 500, json: {
        message: "You're not connected to this board"
      }
    end
  end

  def update
    @mezzage = Mezzage.find(params[:id])
    binding.pry
    if params[:user_name] === @mezzage.user.name
    @mezzage.update!(mezzage_params)
      render status: 200, json: {
        message: "Your mezzage has been updated successfully."
      }
    else
      render status: 500, json: {
        message: "Your mezzage has NOT been updated successfully."
      }
    end

  end

  def destroy
    @mezzage = Mezzage.find(params[:id])
    @mezzage.destroy
  end

  private

  def mezzage_params
    params.permit(:title, :body, :user_id)
  end
end
