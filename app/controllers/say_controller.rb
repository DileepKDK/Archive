class SayController < ApplicationController
  
  def hello
    @client = Client.first
    @clients = Client.all
    @projects = Project.where('start_date')
  end
  
  def goodbye
    
  end
  
end
