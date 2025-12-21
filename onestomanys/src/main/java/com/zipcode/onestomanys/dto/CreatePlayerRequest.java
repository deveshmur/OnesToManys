package com.zipcode.onestomanys.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

public class CreatePlayerRequest {

    @NotBlank
    private String name;

    @NotBlank
    private String position;

    @NotNull
    private Integer jerseyNumber;

    private Integer heightInches;

    public String getName() { return name; }
    public String getPosition() { return position; }
    public Integer getJerseyNumber() { return jerseyNumber; }
    public Integer getHeightInches() { return heightInches; }

    public void setName(String name) { this.name = name; }
    public void setPosition(String position) { this.position = position; }
    public void setJerseyNumber(Integer jerseyNumber) { this.jerseyNumber = jerseyNumber; }
    public void setHeightInches(Integer heightInches) { this.heightInches = heightInches; }
}
