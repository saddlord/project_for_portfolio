class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	after_create :welcome_send

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    has_many :attendances
	has_many :events, through: :attendances

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end
