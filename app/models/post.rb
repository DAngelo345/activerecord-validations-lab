class Post < ActiveRecord::Base
    validates :title, presence: true
    include ActiveModel::Validations
    validates_with TitleValidator
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "%{value} is not a valid category" }


    # def validate(record)
    #     # binding.pry
    #     unless record.title && record.title.match?(/(Won't Believe)| (Secret)|(Top \d*)| (Guess)/)
    #       record.errors[:title] << "Not clickbait"
    #     end
    # end
end
