# frozen_string_literal: true

module FormHelper
  def setup_team(team)
    team.manager ||= Manager.new
    team.players = Array.new(1, Player.new) if team.players.empty?
    team
  end
end
