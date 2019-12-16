# class ClickbaitValidator < ActiveModel::Validator
#
#   Clickbait = [ /Won't Believe/i,
#     /Secret/i,
#     /Top [0-9]*/i,
#     /Guess/i
#   ]
#
#   def validate(record)
#     clickbait = [ /Won't Believe/i,
#       /Secret/i,
#       /Top [0-9]*/i,
#       /Guess/i
#     ]
#     if record.title.any?(clickbait)
#       record.errors[:title] << "Not clickbait-y enough"
#     end
#   end

end
