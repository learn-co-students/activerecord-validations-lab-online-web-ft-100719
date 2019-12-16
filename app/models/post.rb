class Post < ActiveRecord::Base
  include ActiveModel::Validations
  validates_with PostValidator


  
  #validates :id, presence: true, uniqueness: true
  #validates :title, presence: true
  #validates :content, presence: true, length: {in: 10..199}
  #validates :summary, presence: true, length: {maximum: 250}
  #validates :category, presence: true, inclusion: { in: %w(Fiction Non-Fiction)}
end
