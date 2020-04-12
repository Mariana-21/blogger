require "rails_helper"

describe "user sees one article" do
  describe "they link from the articles index" do
    it "displays information for the one article" do 
      article = Article.create(title: "Best Article", body: "Random Text")

      visit articles_path

      click_link article.title

      expect(page).to have_content(article.title)
      expect(page).to have_content(article.body)
    end
  end
end