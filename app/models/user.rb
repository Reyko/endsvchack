class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # geocoded_by :location   # can also be an IP address
  # after_validation :geocode          # auto-fetch coordinates



  validates :first_name, :presence => true
  validates :last_name, :presence => true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :country

  # def location
  #   location = "#{country.name},#{:city}"
  #   location
  # end
end
