class SplashController < ApplicationController

  def index
    render :'splash/index', layout: false
  end

end
