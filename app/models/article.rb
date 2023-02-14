class Article < ApplicationRecord
  validates :title, :content, presence: true #TITLE AND CONTENT CANNOT BE BLANK
  has_many :comments, dependent: :destroy #THIS ENSURES THE COMMENTS ARE REMOVED WITH THE ARTICLE
end
