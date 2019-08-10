class DashBoardController < ApplicationController
  before_action :require_login
  
  def main
    @companys = Member.select(:currentCompany).distinct.where("currentCompany is not null")
    
  end
 
  def showAll
    @members = Member.where("currentCompany is not null")
  end

  def profile 
    @member = Member.find(session[:user_id]).attributes
    
    @memberView = Hash.new
    
    @member.each do |k,v|
      if k!="password" && k!="created_at" && k!="updated_at" && k!='id'
        @memberView[k] = v
      end
    end
  end
  
  def memberDetail
    @member = Member.find(params[:id]).attributes
    
    @memberView = Hash.new
    
    @member.each do |k,v|
      if k!="password" && k!="created_at" && k!="updated_at" && k!='id'
        @memberView[k] = v
      end
    end
    
  end
  
  def updateProfile
    @member = Member.find(session[:user_id])
    params[:update].each do |k,v|
      @member.update("#{k}":v)
      @member.save
    end
  end

  private 
  def require_login
    unless session[:logged_in] == true
      redirect_to "/"
    end
  end
  
end
