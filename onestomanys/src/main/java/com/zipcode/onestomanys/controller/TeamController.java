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

    @GetMapping
    public List<TeamResponse> getAllTeams() {
        return teamService.getAllTeams();
    }

    @GetMapping("/{teamId}")
    public TeamResponse getTeamById(@PathVariable Long teamId) {
        return teamService.getTeamResponseById(teamId);
    }

    @GetMapping("/{teamId}/players")
    public List<PlayerResponse> getPlayersForTeam(@PathVariable Long teamId) {
        return teamService.getPlayersForTeam(teamId);
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public TeamResponse createTeam(@Valid @RequestBody CreateTeamRequest request) {
        return teamService.createTeam(request);
    }

    @PostMapping("/{teamId}/players")
    @ResponseStatus(HttpStatus.CREATED)
    public PlayerResponse createPlayerForTeam(
            @PathVariable Long teamId,
            @Valid @RequestBody CreatePlayerRequest request) {
        return teamService.createPlayerForTeam(teamId, request);
    }
}
