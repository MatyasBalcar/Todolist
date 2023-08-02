require 'rails_helper'

RSpec.describe User, type: :model do
  it "must have @ in email" do
    test = FactoryBot.create(:user)
    expect(test.email).to include('@')
  end
  it "deletes associated tags when user is deleted" do
    user = FactoryBot.create(:user)
    tag = user.tags.create(title: "Tag 1")

    expect { user.destroy }.to change { Tag.count }.by(-1)
  end


  context "validations" do
    it "validates the presence of email" do
      user = FactoryBot.build(:user, email: nil) # Set email to nil explicitly
      expect(user).not_to be_valid

    end
    it "validates the presence of name" do
      user = FactoryBot.build(:user, name: nil) # Set email to nil explicitly
      expect(user).not_to be_valid
      end
    it "validates the presence of surname" do
      user = FactoryBot.build(:user, surname: nil) # Set email to nil explicitly
      expect(user).not_to be_valid
    end
      it "validates the presence of email when email is present" do
      user = FactoryBot.create(:user) # Create a user with a valid email
      expect(user).to be_valid
    end
  end
end
