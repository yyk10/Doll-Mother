class Public::HomesController < ApplicationController
  
def top
  @users = User.all #部分テンプレートで_index.htmlを表示させる為の定義
end

def about
end

end
