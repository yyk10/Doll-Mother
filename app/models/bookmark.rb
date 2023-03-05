class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :clothe

 validates :user_id, uniqueness: { scope: :clothe_id}
 #scopeをつけることで一つのpostに同じuserが重複してlikeできないようにする
end
