require 'spec_helper'

describe Skill do
  # pending "add some examples to (or delete) #{__FILE__}"

  describe "callbacks" do
    describe "before_save" do
      it "should normalize the skill name" do
        skill = Skill.new
        skill.name = "  A Skill "
        skill.save

        skill.normalized_name.should eq "a skill"
      end
    end
  end
end
