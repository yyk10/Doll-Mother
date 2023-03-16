class Material < ApplicationRecord
  #一対多のアソシエーション
   belongs_to :clothe
end
