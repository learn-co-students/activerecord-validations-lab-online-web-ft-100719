class Author < ActiveRecord::Base
  validates :name,uniqueness: true, presence: true, length: { in: 5..10 }
  validates :phone_number, length: { is: 10 }
end
