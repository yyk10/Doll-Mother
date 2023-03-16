class Procedure < ApplicationRecord
  
  #一対多のアソシエーション
belongs_to :clothe
has_one_attached :image #ここはファイル名記載
end
