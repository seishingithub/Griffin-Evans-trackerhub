require 'spec_helper'

feature "pivotal tracker api" do
  scenario "User can see list of all projects" do
    visit '/'
    expect(page).to have_content "tracker"
  end
end