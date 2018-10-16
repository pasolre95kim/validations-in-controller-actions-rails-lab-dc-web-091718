class Author < ActiveRecord::Base
  #the name can't be blank
  validates :name, presence: true
  #email is unique
  validates :email, uniqueness: true
end
