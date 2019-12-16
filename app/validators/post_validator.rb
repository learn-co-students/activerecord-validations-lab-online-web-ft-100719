class PostValidator < ActiveModel::Validator
  def validate(post)
    #binding.pry
    #if post.id == nil
      #post.errors[:id] << "Post is invalid without an iddddd"
    #end
    clickbait = [/Won't Believe/, /Secret/, /Top [0-9]/, /Guess/]
    if clickbait.none?{ |p| p.match post.title}
      post.errors[:title] << "Post is invalid without a titleeeeee"
    end

    if post.content.length < 250
      post.errors[:content] << "Post is invalid with too short contentttttt"
    end
    
    if post.summary.length > 250
      post.errors[:summary] << "Post Summary Maximum is 250"
    end

    if post.category != ("Fiction" || "Non-Fiction")
      post.errors[:category] << "Post Category options are: Fiction or Non-Fiction"
    end
    
  

  end 
end