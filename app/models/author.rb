class Author < ActiveRecord::Base 
    validates :name, presence: true
    validates :phone_number, lenght: { is: 10}
    validates :name,  uniqueness: true
    
end