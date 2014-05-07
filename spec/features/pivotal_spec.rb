require 'spec_helper'

feature "pivotal tracker api" do
  scenario "User can see list of all projects" do
    visit '/'
    click_on "View Projects"
    expect(page).to have_content "ToDo"
  end
end