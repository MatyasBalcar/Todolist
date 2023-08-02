require 'rails_helper'

RSpec.describe Task, type: :model do
  it "must have title" do
    test = FactoryBot.build(:task, title: nil)
    expect(test).not_to be_valid
  end

end
