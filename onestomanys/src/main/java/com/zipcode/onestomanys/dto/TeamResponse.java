package com.zipcode.onestomanys.dto;

public class TeamResponse {

    private Long teamId;
    private String name;
    private String city;
    private String stadium;

    public TeamResponse(Long teamId, String name, String city, String stadium) {
        this.teamId = teamId;
        this.name = name;
        this.city = city;
        this.stadium = stadium;
    }

    public Long getTeamId() { return teamId; }
    public String getName() { return name; }
    public String getCity() { return city; }
    public String getStadium() { return stadium; }
}
