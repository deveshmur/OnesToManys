package com.zipcode.onestomanys.service;

import com.zipcode.onestomanys.dto.CreatePlayerRequest;
import com.zipcode.onestomanys.dto.CreateTeamRequest;
import com.zipcode.onestomanys.dto.PlayerResponse;
import com.zipcode.onestomanys.dto.TeamResponse;
import com.zipcode.onestomanys.model.Player;
import com.zipcode.onestomanys.model.Team;
import com.zipcode.onestomanys.repository.PlayerRepository;
import com.zipcode.onestomanys.repository.TeamRepository;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class TeamService {

    private final TeamRepository teamRepository;
    private final PlayerRepository playerRepository;

    public TeamService(TeamRepository teamRepository,
                       PlayerRepository playerRepository) {
        this.teamRepository = teamRepository;
        this.playerRepository = playerRepository;
    }

    public List<TeamResponse> getAllTeams() {
        return teamRepository.findAll()
                .stream()
                .map(team -> new TeamResponse(
                        team.getTeamId(),
                        team.getName(),
                        team.getCity(),
                        team.getStadium()
                ))
                .collect(Collectors.toList());
    }

    public TeamResponse getTeamResponseById(Long teamId) {
        Team team = getTeamById(teamId);
        return new TeamResponse(
                team.getTeamId(),
                team.getName(),
                team.getCity(),
                team.getStadium()
        );
    }

    public Team getTeamById(Long teamId) {
        return teamRepository.findById(teamId)
                .orElseThrow(() ->
                        new ResponseStatusException(HttpStatus.NOT_FOUND,
                                "Team not found with id " + teamId));
    }

    @Transactional
    public TeamResponse createTeam(CreateTeamRequest request) {
        Team team = new Team(
                request.getName(),
                request.getCity(),
                request.getStadium()
        );

        Team saved = teamRepository.save(team);

        return new TeamResponse(
                saved.getTeamId(),
                saved.getName(),
                saved.getCity(),
                saved.getStadium()
        );
    }

    public List<PlayerResponse> getPlayersForTeam(Long teamId) {
        return playerRepository.findByTeam_TeamId(teamId)
                .stream()
                .map(player -> new PlayerResponse(
                        player.getPlayerId(),
                        player.getName(),
                        player.getPosition(),
                        player.getJerseyNumber(),
                        player.getHeightInches(),
                        player.getTeam().getTeamId()
                ))
                .collect(Collectors.toList());
    }

    @Transactional
    public PlayerResponse createPlayerForTeam(Long teamId, CreatePlayerRequest request) {
        Team team = getTeamById(teamId);

        Player player = new Player(
                request.getName(),
                request.getPosition(),
                request.getJerseyNumber(),
                request.getHeightInches()
        );

        team.addPlayer(player);
        Player saved = playerRepository.save(player);

        return new PlayerResponse(
                saved.getPlayerId(),
                saved.getName(),
                saved.getPosition(),
                saved.getJerseyNumber(),
                saved.getHeightInches(),
                team.getTeamId()
        );
    }
}
