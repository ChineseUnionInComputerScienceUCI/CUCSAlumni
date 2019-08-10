class HomeController < ApplicationController
  
  def index
    
    
  end

  def login
     if Member.where(email:params[:uname]).first != nil
       member = Member.where(email:params[:uname]).first
       if member != nil && member.password == params[:pword]
         session[:logged_in] = true
         session[:user_id] = member.id
         return redirect_to("/dashBoard")
       else
         return render json: {:status => 1, :information => 'password wrong'}
       end
     end
     render json: {:status => 2, :information => 'invalid username'}
  end
  
  def logout
    session[:logged_in] = false
    redirect_to "/"
  end
  
  def createAccount
    if Member.where(CUCSID:params[:CUCSID]).first != nil
      @member = Member.find_by(CUCSID:params[:CUCSID])
      
      params.each do |k,v|
        if k != 'controller' && k!= 'action'
          @member.update("#{k}":v)
        end
      end
    
      return render json: {:status=>4, :information => 'SignUp done!'}
    else
      return render json: {:status=>3, :information => 'CUCSID invalid'}
    end
  end
  

  
end
