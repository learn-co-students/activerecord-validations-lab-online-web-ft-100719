class PostValidator < ActiveModel::Validator
  def validate(record)
    title = record.title
    if title
      unless title.include? "Won't Believe"
        record.errors[:title] << "It needs to have a click bait title!"
      end
    else
      record.errors[:title] << "Needs a title"
    end
  end
end