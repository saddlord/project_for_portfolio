class Event < ApplicationRecord
	has_many :attendances
	has_many :users, through: :attendances

belongs_to :admin, class_name: "User"


  validates :title, presence: true
  validates :duration, presence: true
  validates :start_date, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :location, presence: true

  def admin_name
    firstname = User.find(self.admin_id).first_name
    lastname = User.find(self.admin_id).last_name
    return firstname + ' ' + lastname
  end

  def admin_email
    return User.find(self.admin_id).email
  end

  def event_admin
    User.find(self.admin_id)
  end
   
end
