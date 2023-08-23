class MypagesController < ApplicationController
  def show
    @mypage = Mypage.all
  end
end
