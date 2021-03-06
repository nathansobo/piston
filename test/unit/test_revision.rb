require File.dirname(__FILE__) + "/../test_helper"

class TestRevision < Test::Unit::TestCase
  def setup
    @repository = mock("repository")
    @revision_number = "1"
    @revision = Piston::Revision.new(@repository, @revision_number)
  end

  def test_initialize
    assert_equal @repository, @revision.repository
    assert_equal @revision_number, @revision.revision
  end

  def test_repository
    assert_equal @repository, @revision.repository
  end

  def test_revision
    assert_equal @revision_number, @revision.revision
  end

  def test_name
    assert_equal @revision_number, @revision.name
  end
end
