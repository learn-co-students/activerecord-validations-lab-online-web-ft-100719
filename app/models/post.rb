class Post < ActiveRecord::Base
  validates :title, presence: true 
  validates(:content, { :length => { :minimum => 250 } })
  validates(:summary, { :length => { :maximum => 250 } })
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  validates :clickbait
  
  def clickbait
    if category == "Won't Belive" | "Secret" | "Top 3" | "Guess"
      errors.add(:category, "can't be clickbait-y")
    end
  end
end
