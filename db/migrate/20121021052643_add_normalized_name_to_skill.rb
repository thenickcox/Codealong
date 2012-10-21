class AddNormalizedNameToSkill < ActiveRecord::Migration
  def change
    add_column :skills, :normalized_name, :string
  end
end
