class Clothe < ApplicationRecord

  belongs_to :user, through: :bookmakes
  belongs_to :genre
  belongs_to :type
  has_many :comments, dependent: :destroy  #Clothe.commentsで、投稿が所有するコメントを取得できる。
  has_many :bookmarks, dependent: :destroy

 validates :name, presence: true, length: { maximum: 255 }
 validates :introduction, presence: true, length: { maximum: 65_535 }
 validates :making_time, presence: true, length: { maximum: 30 }
 validates :point, presence: true, length: { maximum: 65_535 }
end
