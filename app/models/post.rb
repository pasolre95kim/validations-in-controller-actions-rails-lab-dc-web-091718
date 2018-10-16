class Post < ActiveRecord::Base
  #title can't be blank
  validates :title, presence: true
  #category is either "Fiction" or "Non-Fiction"
  validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
  #content is at least 100 characters long
  validates :content, length: {minimum: 100}

end
