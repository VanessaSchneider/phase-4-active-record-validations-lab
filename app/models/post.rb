class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-fiction)
    validate: validator


    def vaidator
        unless title.match?("Won't Believe" "Secret" "Top [number]" "Guess")
          errors.add(:email, "Title must include Clickbait")
        end
    end



    def create 
        post = Post.create(title: params[:title], content: params[:content],summary: params[:summary], category: params[:caegory],)

end
end