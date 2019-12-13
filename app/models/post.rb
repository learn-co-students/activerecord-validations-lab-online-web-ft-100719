class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
    validate :title_is_clickbaity

    def title_is_clickbaity
        if title != nil
            if !["Won't Believe", "Secret", "Top[number]", "Guess"].any? {|phrase| title.include? phrase}
                errors.add(:title, "is not clickbait-y enough.")
            end 
        end 
    end 
end
