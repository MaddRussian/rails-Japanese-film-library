class FilmsController < ApplicationController
  def index
    @films =
      if params[:query].present?
        Film.search(params[:query])
      else
        Film.all
      end
  end

  def random
  end
end
