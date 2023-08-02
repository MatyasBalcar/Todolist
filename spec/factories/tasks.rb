FactoryBot.define do
  factory :task do
    title {"titulek"}
    description {"popisek"}
    project_id{1}
    user_id{1}
  end
end
