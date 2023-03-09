class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :clothes, dependent: :destroy
  has_many :comments  #User.commentsで、ユーザーの所有するコメントを取得できる。
  has_many :bookmakes, dependent: :destroy
  has_many :bookmakes_clothes, through: :bookmakes, source: :clothe
  has_many :inquiries, dependent: :destroy

 has_one_attached :image #ここはファイル名記載
 #validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
 #validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
 #validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

 #validates :email, uniqueness: true
 #validates :email, presence: true
 #validates :first_name, presence: true
 #validates :last_name, presence: true

 #userオブジェクトのidとpostやlikeオブジェクトのuser_idが同じかどうかを判断
 def mine?(object)
   object.user_id == id
 end

#bookmarkes_clothesテーブルにpostオブジェクトを追加する。
#いいねを押したときに、いいねしたユーザーといいねされた投稿の情報が保存される。
 def bookmakes(post)
   bookmakes_clothes << post
 end

#bookmakes_clothesテーブルから引数のpostオブジェクトに該当するレコードを削除する。
 def unbookmark(post)
   bookmakes_colthes.destroy(post)
 end

#likes_postsテーブルに引数のpostオブジェクトに該当するレコードがあるかを判断する。
 def bookmake?(post)
   bookmakes_clothes.include?(post)
 end

 def full_name
   "#{last_name} #{first_name}"
 end



end
