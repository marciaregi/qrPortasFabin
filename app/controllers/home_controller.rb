class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
  end

  def admin
   
  end

  def user
    
  end
end
