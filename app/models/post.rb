class Post < ActiveRecord::Base
  include ActiveModel::Validations
  validates_with PostValidator
  

  #validates :content, presence: true, length: {in: 10..199}
  #validates :summary, presence: true, length: {in: 10..199}
  #validates :category, presence: true
end
