class WelcomeController < ApplicationController
  def index
    flash[:notice] = "你好007er！"
  end
end
