class MoviesController < ApplicationController
  def search
  end

  def create
  	@@film = params['film']
  	redirect_to '/show'
  end

  def show
  	thefilm = "'" + @@film + "'"
  	@yourresult = SearchMovie.new(thefilm).perform

  end
end