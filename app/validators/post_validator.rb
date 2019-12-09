class PostValidator < ActiveModel::Validator

    def validate(record)
        clickbait = [/Won't Believe/i, /Secret/i, /Top [0-9]/i, /Guess/i]
        if clickbait.none? { |bait| bait.match(record.title)}
            record.errors[:title] << "must be clickbait"
        end
    end

end