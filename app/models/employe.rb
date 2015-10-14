class Employe < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :rests
  accepts_nested_attributes_for :rests
  validates :e_id, :name, :password_confirmation,presence: true
  validates_format_of :email,:with => Devise.email_regexp,
            :presence => true,
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
 
end
