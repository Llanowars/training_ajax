class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true

  acts_as_votable
end
