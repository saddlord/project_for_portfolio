class Attendance < ApplicationRecord
	after_create :welcome_send

  belongs_to :event
  belongs_to :user

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end
