require 'digest'
class RetrieveIdController < ApplicationController
  def index

  end
  
  def retrieve
    
    cucsId = Digest::SHA256.hexdigest(params[:email])
    record = Member.where(CUCSID:cucsId).first
    


    if record == nil
      return render json: {:information => "社团数据库里没有该邮箱" }
    end
    return render json: {:information=>record.CUCSID}
  end
end
