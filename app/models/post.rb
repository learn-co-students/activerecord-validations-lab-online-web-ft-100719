class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  validate :title_is_clickbaity


  def key_words
    ["Won't Believe", "Secret", "Top", "Guess"]
  end

  def title_is_clickbaity
    if title.present? && !key_words.any? { |word| title.include?(word) }
      errors.add(:title, "Must include a clickbait-y word.")
    end
  end

end
