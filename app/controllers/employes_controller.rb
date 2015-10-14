class EmployesController < ApplicationController
    def dashboard
	   @rests = Rest.all
       @employes= Employe.all
       @employe =  Employe.find_by_id(params[:employe]) 
       @rests  = current_employe.rests 
    end
end 

