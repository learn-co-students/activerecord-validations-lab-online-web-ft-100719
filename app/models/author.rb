class Author < ActiveRecord::Base
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :phone_number, numericality: { only_integer: true, 
                                        message: "can only contain 10 digits"},
                        length: { is: 10 }
end
