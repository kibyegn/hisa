class Category < ActiveRecord::Base
  has_many :stocks  
  validates :name, :uniqueness => true
end
