class AddSkillSetToCandidates < ActiveRecord::Migration[5.0]
  def change
    add_column :candidates, :skill_set, :string
  end
end
