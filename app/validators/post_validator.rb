class PostValidator < ActiveModel::Validator 

    def validate(record) 
        if record.title != nil
            if !["Won't Believe", "Secret", "Top[number]", "Guess"].any? {|phrase| record.title.include? phrase}
                record.errors.add(:title, "is not clickbait-y enough.")
            end 
        end 
    end 
end 