package com.zipcode.onestomanys.controller;

import com.zipcode.onestomanys.model.Player;
import com.zipcode.onestomanys.service.PlayerService;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/players")
public class PlayerController {

    private final PlayerService playerService;

    public PlayerController(PlayerService playerService) {
        this.playerService = playerService;
    }

    @GetMapping
    public List<Player> getAllPlayers() {
        return playerService.getAllPlayers();
    }

    @GetMapping("/{playerId}")
    public Player getPlayerById(@PathVariable Long playerId) {
        return playerService.getPlayerById(playerId);
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public Player createPlayer(@RequestBody Player player) {
        return playerService.createPlayer(player);
    }
}
