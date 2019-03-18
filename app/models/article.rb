class Article < ApplicationRecord
  belongs_to :user
  validates :text,presence: true
  validates :title,presence: true

  mount_uploader :image,ImageUploader


def suggestionList(articles)
  @random = Random.new()
  article = Article.find(self.id)
  if self.id == @random.rand(articles)
    suggestionArticle = article
  end
  return suggestionArticle
end

end


