require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do

  describe "ARTICLE #create" do
    context "with valid attributes" do
      it "create new article" do
        article :create, title: "anyTitle"
        expect(Article.count).to eq(1)
      end
    end
  end
end