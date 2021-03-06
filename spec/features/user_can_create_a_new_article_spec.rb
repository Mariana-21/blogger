require 'rails_helper'

describe "User creates a new article" do 
  it 'creates a new article form' do 
    visit articles_path

    click_link 'Create a New Article'

    expect(current_path).to eq(new_article_path)
    
    fill_in "article[title]",	with: "New Title!" 
    fill_in "article[body]",	with: "New Body!"
    click_on "Create Article"
    
    expect(page).to have_content("New Title!")
    expect(page).to have_content("New Body!")
  end
end

