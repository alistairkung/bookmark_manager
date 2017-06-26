feature "bookmark list" do
  scenario "user loads the homepage" do
    visit '/link'
    expect(page.status_code).to eq 200

    within 'ul#links' do
      expect(page).to have_content('Google')
    end
  end
end
