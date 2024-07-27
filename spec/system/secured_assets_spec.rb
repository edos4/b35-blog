require 'rails_helper'

RSpec.describe "SecuredAssets", driver: :selenium_chrome, js: true do
  let(:user) { create(:user) }
  let(:secured_asset) { create(:secured_asset) }

  before do
    sign_in user
  end

  it "visits the index" do
    visit secured_assets_path
    expect(page).to have_selector("h1", text: "Secured assets")
  end

  it "creates a new secured asset" do
    visit secured_assets_path
    click_on "New secured asset"

    fill_in "Account number", with: "12345"
    fill_in "Cash", with: 100
    click_on "Create Secured asset"

    expect(page).to have_text("Secured asset was successfully created")
    click_on "Back"
  end

  it "updates a secured asset" do
    visit secured_asset_path(secured_asset)
    click_on "Edit this secured asset", match: :first

    fill_in "Account number", with: "54321"
    fill_in "Cash", with: 200
    click_on "Update Secured asset"

    expect(page).to have_text("Secured asset was successfully updated")
    click_on "Back"
  end

  it "destroys a secured asset" do
    visit secured_asset_path(secured_asset)
    click_on "Destroy this secured asset", match: :first

    expect(page).to have_text("Secured asset was successfully destroyed")
  end
end
