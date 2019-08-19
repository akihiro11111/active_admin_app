require 'rails_helper'

RSpec.describe User, type: :model do
  describe "挨拶の表示" do

    #パラメーターをまとめて定義
    let(:user) {User.new(params)}
    let(:params) {{name: "さとる", age: 20}}

    it "住所:沖縄 「よろしくお願いします」の表示" do
      params.merge!(address: "沖縄")
      expect(user.disp_greet).to eq "ゆたしくうにげーさびら"
    end
    it "住所:福岡 「よろしくお願いします」の表示" do
      params.merge!(address: "福岡")
      expect(user.disp_greet).to eq "よろしゅうお願いするけんね"
    end
    it "住所:京都 「よろしくお願いします」の表示" do
      params.merge!(address: "京都")
      expect(user.disp_greet).to eq "よろしく頼んまっせ"
    end
    it "住所:大阪 「よろしくお願いします」の表示" do
      params.merge!(address: "大阪")
      expect(user.disp_greet).to eq "よろしゅう頼んまっせ"
    end
    it "それ以外の場合" do
      params.merge!(address: "")
      expect(user.disp_greet).to eq "よろしくお願いします"
    end

  end
end
