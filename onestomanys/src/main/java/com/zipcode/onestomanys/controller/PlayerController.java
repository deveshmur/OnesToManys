package com.zipcode.onestomanys.controller;

import com.zipcode.onestomanys.dto.CreatePlayerRequest;
import com.zipcode.onestomanys.dto.PlayerResponse;
import com.zipcode.onestomanys.service.PlayerService;
import jakarta.validation.Valid;
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

    // GET /api/players
    @GetMapping
    public List<PlayerResponse> getAllPlayers() {
        return playerService.getAllPlayers();
    }

    // GET /api/players/{playerId}
    @GetMapping("/{playerId}")
    public PlayerResponse getPlayerById(@PathVariable Long playerId) {
        return playerService.getPlayerById(playerId);
    }

    // POST /api/players
    // Create a player not initially tied to a team (teamId = null)
    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public PlayerResponse createPlayer(@Valid @RequestBody CreatePlayerRequest request) {
        return playerService.createPlayer(request);
    }

    // PUT /api/players/{playerId}
    @PutMapping("/{playerId}")
    public PlayerResponse updatePlayer(
            @PathVariable Long playerId,
            @Valid @RequestBody CreatePlayerRequest request) {
        return playerService.updatePlayer(playerId, request);
    }

    // DELETE /api/players/{playerId}
    @DeleteMapping("/{playerId}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deletePlayer(@PathVariable Long playerId) {
        playerService.deletePlayer(playerId);
    }
}
