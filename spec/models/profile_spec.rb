require 'rails_helper'

describe Skill, type: :model do
  it { should have_valid(:name).when("Balance") }
  it { should_not have_valid(:name).when(nil, "") }
  it { should validate_presence_of(:name) }
  it { should have_db_column(:description) }
  it { should have_many(:resources) }
  it { should have_many(:examples).through(:resources) }
  it { should have_many(:directories) }
  it { should have_many(:styles).through(:directories) }
end

describe Style, type: :model do
  it { should have_valid(:name).when("Creative Dance") }
  it { should_not have_valid(:name).when(nil, "") }
  it { should validate_presence_of(:name) }
  it { should have_db_column(:description) }
  it { should have_many(:directories) }
  it { should have_many(:skills).through(:directories) }
  it { should have_many(:prostyles) }
  it { should have_many(:profiles).through(:prostyles) }
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

describe Prostyle, type: :model do
  it { should belong_to(:profile) }
  it { should belong_to(:style) }
end

course = Course.create(title: "Creative Dance at the Dance Complex")
profile = Profile.create(course_id: course.id)
style = Style.create(name: "Creative Dance", description: "Largely improvisational in form...")
profile.styles << style
skill_one = Skill.create(name: "Balance", description: "Some description for balance")
skill_two = Skill.create(name: "Flow", description: "Fluidity of movement")
skill_three = Skill.create(name: "Weight", description: "Not the weight you are thinking of")
style.skills << skill_one
style.skills << skill_two
style.skills << skill_three
example_one = Example.create(title: "Some fake article", url: "www.fakearticle.com")
example_two = Example.create(title: "Some fake video", url: "www.youtube.fake.org")
skill_one.examples << example_one
skill_one.examples << example_two

RSpec.describe Profile do
  it "should be related to course and style" do
    expect(profile.course).to eq(course)
    expect(profile.styles[0]).to eq(style)
  end
end

RSpec.describe Style do
  it "should be related to profile and skills" do
    style.profiles << profile
    expect(style.profiles).to include(profile)
    expect(style.skills).to include(skill_one)
    expect(style.skills).to include(skill_two)
    expect(style.skills).to include(skill_three)
  end
end
