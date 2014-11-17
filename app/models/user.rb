class User < ActiveRecord::Base
  
  validates :name, :presence => true,
    :uniqueness => true
   VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
    validates :email, :presence => true,
     format:{ with: VALID_EMAIL_REGEX },
    :uniqueness => true

    #validates :password, presence: true, confirmation:true;
  
  has_many :jobs

end
