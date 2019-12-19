class TitleValidator < ActiveModel::Validator 
    def validate(record)
        unless record.title.match?(/Won't Believe/) || record.title.match?(/Secret/) || record.title.match?(/Top [number]/) || record.title.match?(/Guess/)
            record.errors[:name] << "We're only allowed to have people who work for the company in the database!"
        end 
    end 
end 