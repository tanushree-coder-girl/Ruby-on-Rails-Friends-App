class HomeController < ApplicationController
  def index
  end 

  def about
    @about_me = "Hello Everyone, My name is xyz nd i am a software developer..."
    @output = 5 + 5
  end
end
