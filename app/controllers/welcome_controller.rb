class WelcomeController < ApplicationController
  def index
    flash[:notice] = "007er！你好！"
  end
end
