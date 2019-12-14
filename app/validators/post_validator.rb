class PostValidator < ActiveModel::Validator
  def validate(post)
    #binding.pry
    if post.id = nil
      post.save
    end

    unless post.title = nil
      post.errors[:title] << "Post is invalid without a title"
    end

    unless post.content = nil
      post.errors[:content] << "Post is invalid with too short content"
    end


    
    
  end 
end