class Clothe < ApplicationRecord

  belongs_to :user#, through: :bookmakes
  belongs_to :genre
  belongs_to :type
  has_many :comments, dependent: :destroy  #Clothe.commentsで、投稿が所有するコメントを取得できる。
  has_many :bookmarks, dependent: :destroy
  has_many :procedures, dependent: :destroy
  has_many :materials, dependent: :destroy

  #関連付けしたモデルを一緒にデータ保存できるようにする
accepts_nested_attributes_for :procedures, allow_destroy: true
accepts_nested_attributes_for :materials, allow_destroy: true


 validates :name, presence: true, length: { maximum: 255 }
 validates :short_text, presence: true, length: { maximum: 65_535 }
 validates :making_time, presence: true, length: { maximum: 30 }
 validates :point, presence: true, length: { maximum: 65_535 }

 has_one_attached :image #ここはファイル名記載
 accepts_nested_attributes_for :materials, :procedures, allow_destroy: true

end
