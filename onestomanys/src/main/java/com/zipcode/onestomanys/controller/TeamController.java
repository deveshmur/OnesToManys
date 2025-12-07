package com.zipcode.onestomanys.controller;

import com.zipcode.onestomanys.model.Player;
import com.zipcode.onestomanys.model.Team;
import com.zipcode.onestomanys.service.TeamService;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class TeamController {

    private final TeamService teamService;

    public TeamController(TeamService teamService) {
        this.teamService = teamService;
    }

    @GetMapping("/teams")
    public List<Team> getAllTeams() {
        return teamService.getAllTeams();
    }

    @GetMapping("/teams/{teamId}")
    public Team getTeamById(@PathVariable Long teamId) {
        return teamService.getTeamById(teamId);
    }

    @GetMapping("/teams/{teamId}/players")
    public List<Player> getPlayersForTeam(@PathVariable Long teamId) {
        return teamService.getPlayersForTeam(teamId);
    }

    @PostMapping("/teams")
    @ResponseStatus(HttpStatus.CREATED)
    public Team createTeam(@RequestBody Team team) {
        return teamService.createTeam(team);
    }

    @PostMapping("/teams/{teamId}/players")
    @ResponseStatus(HttpStatus.CREATED)
    public Player createPlayerForTeam(@PathVariable Long teamId,
                                      @RequestBody Player player) {
        return teamService.createPlayerForTeam(teamId, player);
    }
}