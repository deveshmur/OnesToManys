package com.zipcode.onestomanys.controller;

import com.zipcode.onestomanys.dto.PlayerResponse;
import com.zipcode.onestomanys.service.PlayerService;
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
    public List<PlayerResponse> getAllPlayers() {
        return playerService.getAllPlayers();
    }

    @GetMapping("/{playerId}")
    public PlayerResponse getPlayerById(@PathVariable Long playerId) {
        return playerService.getPlayerById(playerId);
    }
}
