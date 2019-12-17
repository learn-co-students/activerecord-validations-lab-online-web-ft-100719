class ClickbaitValidator < ActiveModel::Validator


    def validate(post)
        if post.title
            if !clickbait?(post)
                post.errors[:title] << 'Must be clickbait'
            end
        end
    end

    def clickbait?(post)
        post.title.include?("Won't Believe") || post.title.include?("Secret") || post.title.include?("Top [0-9]") || post.title.include?("Guess")
    end
end
