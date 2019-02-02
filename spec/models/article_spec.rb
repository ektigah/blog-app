require 'rails_helper'

RSpec.describe Article, type: :model do
 let(:category) { Category.create(name: "testCategory")}
 let(:user) { User.create(username: "testUN")} 
  
  it "create a post" do
    article = Article.new(title:"testTitle", description: "anycontent", user: user )
    expect(article).to be valid
  end
end