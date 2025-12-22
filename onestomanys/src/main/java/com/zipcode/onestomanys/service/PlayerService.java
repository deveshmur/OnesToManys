package com.zipcode.onestomanys.service;

import com.zipcode.onestomanys.dto.CreatePlayerRequest;
import com.zipcode.onestomanys.dto.PlayerResponse;
import com.zipcode.onestomanys.model.Player;
import com.zipcode.onestomanys.repository.PlayerRepository;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class PlayerService {

    private final PlayerRepository playerRepository;

    public PlayerService(PlayerRepository playerRepository) {
        this.playerRepository = playerRepository;
    }

    public List<PlayerResponse> getAllPlayers() {
        return playerRepository.findAll()
                .stream()
                .map(this::toPlayerResponse)
                .collect(Collectors.toList());
    }

    public PlayerResponse getPlayerById(Long playerId) {
        Player player = playerRepository.findById(playerId)
                .orElseThrow(() ->
                        new ResponseStatusException(HttpStatus.NOT_FOUND,
                                "Player not found with id " + playerId));

        return toPlayerResponse(player);
    }

    @Transactional
    public PlayerResponse createPlayer(CreatePlayerRequest request) {
        Player player = new Player(
                request.getName(),
                request.getPosition(),
                request.getJerseyNumber(),
                request.getHeightInches()
        );
        // No team set here (team is null) – can be associated later via /api/teams/{teamId}/players

        Player saved = playerRepository.save(player);
        return toPlayerResponse(saved);
    }

    @Transactional
    public PlayerResponse updatePlayer(Long playerId, CreatePlayerRequest request) {
        Player player = playerRepository.findById(playerId)
                .orElseThrow(() ->
                        new ResponseStatusException(HttpStatus.NOT_FOUND,
                                "Player not found with id " + playerId));

        player.setName(request.getName());
        player.setPosition(request.getPosition());
        player.setJerseyNumber(request.getJerseyNumber());
        player.setHeightInches(request.getHeightInches());

        Player saved = playerRepository.save(player);
        return toPlayerResponse(saved);
    }

    @Transactional
    public void deletePlayer(Long playerId) {
        Player player = playerRepository.findById(playerId)
                .orElseThrow(() ->
                        new ResponseStatusException(HttpStatus.NOT_FOUND,
                                "Player not found with id " + playerId));

        playerRepository.delete(player);
    }

    private PlayerResponse toPlayerResponse(Player player) {
        return new PlayerResponse(
                player.getPlayerId(),
                player.getName(),
                player.getPosition(),
                player.getJerseyNumber(),
                player.getHeightInches(),
                (player.getTeam() != null ? player.getTeam().getTeamId() : null)
        );
    }
}
