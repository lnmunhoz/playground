require "minitest/autorun"
require './lib/kill'

describe Kill do
  describe "should be able to capture killer, victim and mean from a Kill line" do
    it "when the killer is <world>" do
      line = "23:06 Kill: 1022 2 22: <world> killed Isgalamido by MOD_TRIGGER_HURT"
      killer, victim, mean = Kill.captures(line)

      assert_equal "<world>", killer
      assert_equal "Isgalamido", victim
      assert_equal "MOD_TRIGGER_HURT", mean
    end

    it "when the killer is a player" do
      line = "2:37 Kill: 3 2 10: Isgalamido killed Dono da Bola by MOD_RAILGUN"
      killer, victim, mean = Kill.captures(line)

      assert_equal "Isgalamido", killer
      assert_equal "Dono da Bola", victim
      assert_equal "MOD_RAILGUN", mean
    end
  end
end
