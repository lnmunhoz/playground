require "minitest/autorun"
require './lib/line'

describe Line do
  it "should be a valid InitGame line" do
    line = "20:37 InitGame: \/sv_floodProtect\/"
    result = Line.initGame?(line)
    assert_equal(true, result)
  end

  it "should be an invalid InitGame line" do
    line = "An invalid InitGame line"
    result = Line.initGame?(line)
    assert_equal(false, result)
  end

  it "should be a valid ShutdownGame line" do
    line = "20:37 ShutdownGame:"
    result = Line.shutdownGame?(line)
    assert_equal(true, result)
  end

  it "should be an invalid ShutdownGame line" do
    line = "An invalid ShutdownGame line"
    result = Line.shutdownGame?(line)
    assert_equal(false, result)
  end

  it "should be a valid Kill line" do
    line = "20:54 Kill: 1022 2 22: <world> killed Isgalamido by MOD_TRIGGER_HURT"
    result = Line.kill?(line)
    assert_equal(true, result)
  end

  it "should be a valid Kill line" do
    line = "An invalid Kill line"
    result = Line.kill?(line)
    assert_equal(false, result)
  end
end
