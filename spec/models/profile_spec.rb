require 'rails_helper'

describe Skill, type: :model do
  it { should have_valid(:name).when("Balance") }
  it { should_not have_valid(:name).when(nil, "") }
  it { should validate_presence_of(:name) }
  it { should have_db_column(:description) }
  it { should have_many(:resources) }
  it { should have_many(:examples).through(:resources) }
  it { should have_many(:directories) }
end

describe Style, type: :model do
  it { should have_valid(:name).when("Creative Dance") }
  it { should_not have_valid(:name).when(nil, "") }
  it { should validate_presence_of(:name) }
  it { should have_db_column(:description) }
  it { should have_many(:directories) }
  it { should have_many(:skills).through(:directories) }
end

describe Directory, type: :model do
  it { should belong_to(:style) }
  it { should belong_to(:skill) }
end

describe Profile, type: :model do
  it { should belong_to(:course) }
  it { should have_many(:prostyles) }
  it { should have_many(:styles).through(:prostyles) }
  it { should validate_uniqueness_of(:course_id) }
end

describe Example, type: :model do
  it { should have_valid(:title).when("Some article title") }
  it { should_not have_valid(:title).when(nil, "") }
  it { should have_valid(:url).when("https://www.google.com") }
  it { should_not have_valid(:url).when(nil, "") }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:url) }
  it { should have_db_column(:description) }
end

describe Resource, type: :model do
  it { should belong_to(:example) }
  it { should belong_to(:skill) }
end
