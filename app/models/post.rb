class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    validate :clickbait
    def clickbait
        if self.title
            unless self.title.match?(/Won't Believe/) || self.title.match?(/Secret/) || self.title.match?(/Top [number]/) || self.title.match?(/Guess/)
                self.errors[:name] << "New Message, Make It Catchy!"
            end
        end 
    end 
end 