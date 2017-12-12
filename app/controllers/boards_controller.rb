class BoardsController < ApplicationController
  include Response
  def index
    @board = Board.find(params[:id])
    json_response(@board)
  end

  def show
    @board = Board.find(params[:id])
    json_response(@board)
  end

  def create
    @board = Board.create!(board_params)
    json_response(@board, :created)
  end

  def update
    @board = Board.find(params[:id])
    @board.update!(board_params)
      render status: 200, json: {
        message: "Your board has been updated successfully."
      }
  end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy
  end

  private

  def board_params
    params.permit(:title, :description)
  end
end
