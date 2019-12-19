class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) , message: "%{value} is not a valid category" }
    validate :is_clickbaity?

    def is_clickbaity?
        if !title.blank?
            #binding.pry
            errors.add(:title, "not clickbait-y enough") unless title.include?("Won't Believe") || title.include?("Guess") || title.include?("Secret") || title.match("Top [1-9]+") 
            
        end
    end


end