class Material < ApplicationRecord
  #一対多のアソシエーション
   belongs_to :clothe
   
   validates :name, presence: true
end
