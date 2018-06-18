class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def show
    @game = find_game
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  private

  def find_game
    Game.find(params[:id])
  end


end
