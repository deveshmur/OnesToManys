package com.zipcode.onestomanys.service;

import com.zipcode.onestomanys.dto.PlayerResponse;
import com.zipcode.onestomanys.model.Player;
import com.zipcode.onestomanys.repository.PlayerRepository;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
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
                .map(player -> new PlayerResponse(
                        player.getPlayerId(),
                        player.getName(),
                        player.getPosition(),
                        player.getJerseyNumber(),
                        player.getHeightInches(),
                        (player.getTeam() != null ? player.getTeam().getTeamId() : null)
                ))
                .collect(Collectors.toList());
    }

    public PlayerResponse getPlayerById(Long playerId) {
        Player player = playerRepository.findById(playerId)
                .orElseThrow(() ->
                        new ResponseStatusException(HttpStatus.NOT_FOUND,
                                "Player not found with id " + playerId));

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
