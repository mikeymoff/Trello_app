class BoardsController < ApplicationController
  before_action :set_board, only: [:show, :edit, :update, :destroy]

  
  def index
    @boards = current_user.boards.all
  end

  
  def show
  end

  
  def new
    @board = current_user.boards.new
    render partial: 'boards/form'

  end

  
  def edit
    render partial: 'boards/form'
  end

  
  def create
    @board = current_user.boards.new(board_params)
    if @board.save
      redirect_to boards_path
    else
      render :new
    end
  end


  
  def update
    if @board.update(board_params)
      redirect_to boards_path
    else
      render :edit
    end
  end

  
  def destroy
    @board.destroy
    redirect_to boards_path
  end

  private
    def set_board
      params.require(:board).permit(:title)

    end

    def board_params
      @board = current_user.boards.find(params[:id])
    end
end
