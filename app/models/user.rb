class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  validates_presence_of :first_name,
                        :last_name,
                        :username,
                        :encrypted_password,
                        :email

  validates_uniqueness_of :email

  has_many :arts
  has_many :articles
  has_many :songs
  has_many :videos
end
