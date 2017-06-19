class HomeController < ApplicationController
  def index
 
    @message2 = "Dongguk room saver!"
    @count = 3
    @explanation = "This message came from the controller."
  end
end
