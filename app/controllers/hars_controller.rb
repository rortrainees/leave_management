class HarsController < ApplicationController
	 include HarsHelper

	        def dashboard
	  	        @rests = Rest.all
              @employes= Employe.all
          end

          def approve
              @rests = Rest.all
              @employes= Employe.all
              @rest = Rest.find(params[:id])
              if @rest.status == 'pending' 
                 @rest.update_attribute(:status, "approve")
               
                 gflash :success =>"Leave Approve."
                 redirect_to hars_dashboard_url
              end
          end
          

          def disapprove
              @rests = Rest.all
              @employes= Employe.all
              @rest = Rest.find(params[:id])
              if @rest.status == 'pending' 
                 @rest.update_attribute(:status, "disapprove")
                 gflash :success =>"Leave Disapprove." 
                 redirect_to hars_dashboard_url
              end
          end
	
end
 
