class Review < ActiveRecord::Base
  belongs_to :restaurant


  validates :content, presence: true
  validates :rating, numericality: {less_than: 6}
end
