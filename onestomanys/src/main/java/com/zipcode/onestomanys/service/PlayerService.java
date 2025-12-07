package com.zipcode.onestomanys.service;

import com.zipcode.onestomanys.model.Player;
import com.zipcode.onestomanys.repository.PlayerRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PlayerService {

    private final PlayerRepository playerRepository;

    public PlayerService(PlayerRepository playerRepository) {
        this.playerRepository = playerRepository;
    }

    public List<Player> getAllPlayers() {
        return playerRepository.findAll();
    }

    public Player getPlayerById(Long playerId) {
        return playerRepository.findById(playerId)
                .orElseThrow(() -> new RuntimeException("Player not found with id " + playerId));
    }

    public Player createPlayer(Player player) {
        return playerRepository.save(player);
    }
}
