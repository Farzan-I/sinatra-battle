feature "Enter names" do
  scenario "submitting names" do  
    visit("/")
    fill_in :player_1_name, with: "Farzan"
    fill_in :player_2_name, with: "Laura"
    click_button "Submit"

    save_and_open_page

    expect(page).to have_content "Farzan will DEFINITELY lose to Laura"
  end
end

feature "View HP" do
  scenario "Player 1 views Player 2's HP" do
    visit("/")
    fill_in :player_1_name, with: "Farzan"
    fill_in :player_2_name, with: "Laura"
    click_button "Submit"
    expect(page).to have_content 'Laura: 100HP'
  end
end