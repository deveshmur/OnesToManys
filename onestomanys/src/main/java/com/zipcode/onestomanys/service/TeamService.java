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

    @Transactional
    public TeamResponse updateTeam(Long teamId, CreateTeamRequest request) {
        Team team = getTeamById(teamId);

        team.setName(request.getName());
        team.setCity(request.getCity());
        team.setStadium(request.getStadium());

        Team saved = teamRepository.save(team);

        return new TeamResponse(
                saved.getTeamId(),
                saved.getName(),
                saved.getCity(),
                saved.getStadium()
        );
    }

    @Transactional
    public void deleteTeam(Long teamId) {
        Team team = getTeamById(teamId);
        // Because of cascade = ALL and orphanRemoval = true on Team.players,
        // deleting the team will also delete its players.
        teamRepository.delete(team);
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

    @Transactional
    public PlayerResponse updatePlayerForTeam(Long teamId, Long playerId, CreatePlayerRequest request) {
        Team team = getTeamById(teamId);

        Player player = playerRepository.findById(playerId)
                .orElseThrow(() ->
                        new ResponseStatusException(HttpStatus.NOT_FOUND,
                                "Player not found with id " + playerId));

        if (player.getTeam() == null || !player.getTeam().getTeamId().equals(teamId)) {
            throw new ResponseStatusException(
                    HttpStatus.NOT_FOUND,
                    "Player with id " + playerId + " does not belong to team with id " + teamId
            );
        }

        player.setName(request.getName());
        player.setPosition(request.getPosition());
        player.setJerseyNumber(request.getJerseyNumber());
        player.setHeightInches(request.getHeightInches());

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

    @Transactional
    public void deletePlayerFromTeam(Long teamId, Long playerId) {
        Team team = getTeamById(teamId);

        Player player = playerRepository.findById(playerId)
                .orElseThrow(() ->
                        new ResponseStatusException(HttpStatus.NOT_FOUND,
                                "Player not found with id " + playerId));

        if (player.getTeam() == null || !player.getTeam().getTeamId().equals(teamId)) {
            throw new ResponseStatusException(
                    HttpStatus.NOT_FOUND,
                    "Player with id " + playerId + " does not belong to team with id " + teamId
            );
        }

        // Keep both sides in sync, then delete
        team.removePlayer(player);
        playerRepository.delete(player);
    }
}
