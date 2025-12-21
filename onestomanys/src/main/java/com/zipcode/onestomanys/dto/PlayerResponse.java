package com.zipcode.onestomanys.dto;

public class PlayerResponse {

    private Long playerId;
    private String name;
    private String position;
    private Integer jerseyNumber;
    private Integer heightInches;
    private Long teamId;

    public PlayerResponse(Long playerId, String name, String position,
                          Integer jerseyNumber, Integer heightInches, Long teamId) {
        this.playerId = playerId;
        this.name = name;
        this.position = position;
        this.jerseyNumber = jerseyNumber;
        this.heightInches = heightInches;
        this.teamId = teamId;
    }

    public Long getPlayerId() { return playerId; }
    public String getName() { return name; }
    public String getPosition() { return position; }
    public Integer getJerseyNumber() { return jerseyNumber; }
    public Integer getHeightInches() { return heightInches; }
    public Long getTeamId() { return teamId; }
}
