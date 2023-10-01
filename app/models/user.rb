class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :prototypes
  has_many :comments

  [:name, :profile, :occupation, :position].each do |v|
      validates v, presence: true
  end
  
end
