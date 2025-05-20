class FilmsController < ApplicationController
  def index
    @films = Film.all
  end

  def random
  end
end
