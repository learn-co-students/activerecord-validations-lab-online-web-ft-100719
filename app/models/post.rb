class Post < ActiveRecord::Base
    validates :title, presence: true, format:{with: /Won't Believe|Secret|Top 5|Guess/}
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: "Fiction Non-Fiction"}
    validates :is_clickbait

    
    end
    
    