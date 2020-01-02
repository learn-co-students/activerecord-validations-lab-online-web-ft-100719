class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250}
  validates :summary, length: { maximum: 250}
  validates :category, inclusion: { in: %w(Fiction Non-
  fiction)}
  validate :Is_Clicky

  Clicky = [
  /Won't/,
  /Secret/,
  /Top/,
  /Guess/
  ]


  def Is_Clicky
    if Clicky.none? { |pattern| pattern.match title}
      errors.add(:title, "Your title needs to be clickbait!")
    end
  end
end

