class TitleValidator < ActiveModel::Validator 
    def validate(record)
        unless record.title.match?(/Won't Believe/) || record.title.match?(/Secret/) || record.title.match?(/Top [number]/) || record.title.match?(/Guess/)
            record.errors[:name] << "New Message, Make It Catchy!"
        end 
    end 
end 