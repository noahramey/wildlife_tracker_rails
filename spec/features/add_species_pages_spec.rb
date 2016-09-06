require 'rails_helper'

describe 'the add a species process' do
  it "adds a new species" do
    visit species_index_path
    click_on "New Species"
    fill_in "Name", :with => "Clefairy"
    click_on "Create Species"
    expect(page).to have_content 'Clefairy'
  end
end
