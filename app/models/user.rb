class User < ApplicationRecord
  attr_accessor :search_name, :search_age, :search_address, :name, :age, :address

  def initialize(**params)
    self.name = params[:name]
    self.age  = params[:age]
    self.address = params[:address]
  end

  def disp_greet
    case self.address
    when "沖縄"
      "ゆたしくうにげーさびら"
    when "福岡"
      "よろしゅうお願いするけんね"
    when "京都"
      "よろしく頼んまっせ"
    when "大阪"
      "よろしゅう頼んまっせ"
    else
      "よろしくお願いします"
    end
  end

  def search
    User.ransack(name_cont: @search_name, age_eq: @search_age, address_eq: @search_address).result
  end

end
