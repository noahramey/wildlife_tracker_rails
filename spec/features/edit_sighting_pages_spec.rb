require 'rails_helper'

describe "the edit a sighting process" do
  it "edits a sighting" do
    species = Species.create(name: "Tentacool")
    region = Region.create(name: "Hoenn")
    sighting = Sighting.create(date: "2016-09-06", latitude: "asdf", longitude: "asdf", species_id: species.id, region_id: region.id)
    visit species_path(species)
    click_on 'Edit'
    fill_in 'Latitude', :with => 'fdsa'
    click_on 'Update Sighting'
    expect(page).to have_content('Hoenn')
  end

  it "gives error when no form input is entered" do
    species = Species.create(name: "Tentacool")
    region = Region.create(name: "Hoenn")
    sighting = Sighting.create(date: "2016-09-06", latitude: "asdf", longitude: "asdf", species_id: species.id, region_id: region.id)
    visit species_path(species)
    click_on 'Edit'
    fill_in 'Latitude', :with => ''
    click_on 'Update Sighting'
    expect(page).to have_content('errors')
  end
end
