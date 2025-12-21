package com.zipcode.onestomanys.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

public class CreateTeamRequest {

    @NotBlank
    @Size(max = 100)
    private String name;

    @NotBlank
    @Size(max = 100)
    private String city;

    @Size(max = 150)
    private String stadium;

    public String getName() { return name; }
    public String getCity() { return city; }
    public String getStadium() { return stadium; }

    public void setName(String name) { this.name = name; }
    public void setCity(String city) { this.city = city; }
    public void setStadium(String stadium) { this.stadium = stadium; }
}
