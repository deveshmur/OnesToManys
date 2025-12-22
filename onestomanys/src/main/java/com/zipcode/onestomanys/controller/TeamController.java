package com.zipcode.onestomanys.controller;

import com.zipcode.onestomanys.dto.CreatePlayerRequest;
import com.zipcode.onestomanys.dto.CreateTeamRequest;
import com.zipcode.onestomanys.dto.PlayerResponse;
import com.zipcode.onestomanys.dto.TeamResponse;
import com.zipcode.onestomanys.service.TeamService;

import jakarta.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/teams")
public class TeamController {

    private final TeamService teamService;

    public TeamController(TeamService teamService) {
        this.teamService = teamService;
    }

    // GET /api/teams
    @GetMapping
    public List<TeamResponse> getAllTeams() {
        return teamService.getAllTeams();
    }

    // GET /api/teams/{teamId}
    @GetMapping("/{teamId}")
    public TeamResponse getTeamById(@PathVariable Long teamId) {
        return teamService.getTeamResponseById(teamId);
    }

    // GET /api/teams/{teamId}/players
    @GetMapping("/{teamId}/players")
    public List<PlayerResponse> getPlayersForTeam(@PathVariable Long teamId) {
        return teamService.getPlayersForTeam(teamId);
    }

    // POST /api/teams
    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public TeamResponse createTeam(@Valid @RequestBody CreateTeamRequest request) {
        return teamService.createTeam(request);
    }

    // PUT /api/teams/{teamId}
    @PutMapping("/{teamId}")
    public TeamResponse updateTeam(
            @PathVariable Long teamId,
            @Valid @RequestBody CreateTeamRequest request) {
        return teamService.updateTeam(teamId, request);
    }

    // DELETE /api/teams/{teamId}
    @DeleteMapping("/{teamId}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteTeam(@PathVariable Long teamId) {
        teamService.deleteTeam(teamId);
    }

    // POST /api/teams/{teamId}/players
    @PostMapping("/{teamId}/players")
    @ResponseStatus(HttpStatus.CREATED)
    public PlayerResponse createPlayerForTeam(
            @PathVariable Long teamId,
            @Valid @RequestBody CreatePlayerRequest request) {
        return teamService.createPlayerForTeam(teamId, request);
    }

    // PUT /api/teams/{teamId}/players/{playerId}
    @PutMapping("/{teamId}/players/{playerId}")
    public PlayerResponse updatePlayerForTeam(
            @PathVariable Long teamId,
            @PathVariable Long playerId,
            @Valid @RequestBody CreatePlayerRequest request) {
        return teamService.updatePlayerForTeam(teamId, playerId, request);
    }

    // DELETE /api/teams/{teamId}/players/{playerId}
    @DeleteMapping("/{teamId}/players/{playerId}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deletePlayerFromTeam(
            @PathVariable Long teamId,
            @PathVariable Long playerId) {
        teamService.deletePlayerFromTeam(teamId, playerId);
    }
}
