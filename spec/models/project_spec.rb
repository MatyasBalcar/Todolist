require 'rails_helper'

RSpec.describe Project, type: :model do
  it "must have title" do
    test = FactoryBot.build(:project, title: nil)
    expect(test).not_to be_valid
  end


  describe "#destroy" do
    it "destroys associated tasks" do
      project = FactoryBot.build(:project)
      task_1 = FactoryBot.build(:task, project: project)
      task_2 = FactoryBot.build(:task, project: project)

      # Capture the count of tasks associated with the project before destruction
      task_count_before_destruction = project.tasks.count

      expect {
        project.destroy
      }.to change(Task, :count).by(-task_count_before_destruction)

      # Make sure the associated tasks are actually destroyed
      expect(Task.where(id: [task_1.id, task_2.id])).to be_empty
    end
    end

end
