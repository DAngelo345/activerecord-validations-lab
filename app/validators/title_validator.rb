class TitleValidator < ActiveModel::Validator

  def validate(record)
    # binding.pry
    unless record.title && record.title.match?(/(Won't Believe)| (Secret)|(Top \d*)| (Guess)/)
      record.errors[:title] << "Not clickbait"
    end
end
end