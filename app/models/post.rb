class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :summary, length: { maximum: 250 }
    validates :content, length: { minimum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
    validate :clickbait 

    def clickbait
        if !title.nil? && (!title.include?("Won't Believe" || "Secret" || "Top" || "Guess"))
            errors.add(:clickbait, "Non clickbait is invalid if not clickbait") 
        end
    end
    
end
