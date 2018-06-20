class GamesController < ApplicationController
  include GameHelper

  def index
    @games = Game.all
    @ownership = Ownership.new
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
    @game = find_game
  end

  def update
    @game = find_game
    @game.update(game_params)
    redirect_to show
  end

  private

  def find_game
    Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:title)
  end

end
