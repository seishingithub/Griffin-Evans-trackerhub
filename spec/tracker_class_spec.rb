require 'spec_helper'

describe Tracker do
  it 'should get a list of projects' do
  projects = Tracker.new.get_projects
  expect(projects.first).to include ("account_id")
  end
end