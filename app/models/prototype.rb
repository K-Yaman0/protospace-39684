class Prototype < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image

  [:title, :catch_copy, :concept, :image].each do |v|
    validates v, presence: true
  end

end
