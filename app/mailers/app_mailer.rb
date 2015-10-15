 class AppMailer < ApplicationMailer
  	  default from: "xxxxxxxxxxxxx@gmail.com"

          def applied_for_leave(rest)
            @rest = rest
            mail(:to => " #{rest.employe.email}" , :subject => "Leave request by #{rest.employe.name}")
          end

          def leave_status(rest)
            @rest = rest
            mail(:to => "#{rest.employe.email}" , :subject => " Hi! #{rest.employe.name} Your leave Notification  ")
          end

        
end
