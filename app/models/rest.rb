class Rest < ActiveRecord::Base
  belongs_to :employe
  validates :start_date, :end_date, :resone, :employe_id,:place, :contact, :department,:join_date, presence: true
  
  validates :start_date,
            date: { after: Proc.new {  Time.now }}
          
  validates :end_date,
            date: { after: Proc.new {  Time.now },
                  before: Proc.new {  Time.now + 1.month } }



  after_create :send_email

    def send_email
     AppMailer.applied_for_leave(self).deliver
    end

    after_update :leave_notification
    def leave_notification 
    AppMailer.leave_status(self).deliver
    end
   
end
 
