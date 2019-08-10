class CompanyController < ApplicationController  
 def main
  @members = Member.where("currentCompany is not null")
  @companySet = Set.new()
  @members.each do |member|
    puts member.currentCompany
    @companySet.add(member.currentCompany)  
  end

  @data = {
   :companyNames => @companySet,
   :members => @members
  }  
  end  
end
