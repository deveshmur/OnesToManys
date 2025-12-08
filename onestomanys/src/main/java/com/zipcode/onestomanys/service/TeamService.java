package com.zipcode.onestomanys.service;

import com.zipcode.onestomanys.model.Player;
import com.zipcode.onestomanys.model.Team;
import com.zipcode.onestomanys.repository.PlayerRepository;
import com.zipcode.onestomanys.repository.TeamRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TeamService {

    private final TeamRepository teamRepository;
    private final PlayerRepository playerRepository;

    public TeamService(TeamRepository teamRepository, PlayerRepository playerRepository) {
        this.teamRepository = teamRepository;
        this.playerRepository = playerRepository;
    }

    public List<Team> getAllTeams() {
        return teamRepository.findAll();
    }

    public Team getTeamById(Long teamId) {
        return teamRepository.findById(teamId)
            .orElseThrow(() -> new RuntimeException("Team not found with id " + teamId));
    }

    public Team createTeam(Team team) {
        return teamRepository.save(team);
    }

    public List<Player> getPlayersForTeam(Long teamId) {
        return playerRepository.findByTeam_TeamId(teamId);
    }

    public Player createPlayerForTeam(Long teamId, Player player) {
        Team team = getTeamById(teamId); 
        team.addPlayer(player);
        teamRepository.save(team);
        return player;
    }
}