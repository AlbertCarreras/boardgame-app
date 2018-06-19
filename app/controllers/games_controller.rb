class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def show
    @game = find_game
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(game_params)
    redirect_to @game
  end

  def edit

  end

  def update

  end

  private

  def find_game
    Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:title)
  end



end
