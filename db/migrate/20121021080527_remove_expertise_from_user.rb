class RemoveExpertiseFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :expertise
  end

  def down
    add_column :users, :expertise, :string
  end
end
