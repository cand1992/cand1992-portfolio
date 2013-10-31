require "test_helper"

class ProjectTest < ActiveSupport::TestCase

  def setup
    @project = Project.new
  end

  def test_valid
    assert @project.valid?
  end

end
