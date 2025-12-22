import { useEffect, useState } from "react";
import { SimpleGrid, Box, Heading, Spinner } from "@chakra-ui/react";
import { getAllTeams, getPlayersForTeam } from "../utils/api";
import TeamCard from "../components/TeamCard";
import PlayerCard from "../components/PlayerCard";

export default function Database() {
  const [teams, setTeams] = useState([]);
  const [players, setPlayers] = useState([]);
  const [selectedTeam, setSelectedTeam] = useState(null);
  const [loadingTeams, setLoadingTeams] = useState(true);
  const [loadingPlayers, setLoadingPlayers] = useState(false);

  useEffect(() => {
    async function loadTeams() {
      setLoadingTeams(true);
      const data = await getAllTeams();
      setTeams(data);
      setLoadingTeams(false);
    }
    loadTeams();
  }, []);

  async function handleSelectTeam(team) {
    setSelectedTeam(team);
    setLoadingPlayers(true);
    const playerList = await getPlayersForTeam(team.teamId);
    setPlayers(playerList);
    setLoadingPlayers(false);
  }

  return (
    <Box p={8}>
      <Heading mb={4}>Teams</Heading>

      {loadingTeams ? (
        <Spinner size="xl" />
      ) : (
        <SimpleGrid columns={[1, 2, 3]} spacing={6}>
          {teams.map((team) => (
            <TeamCard
              key={team.teamId}
              team={team}
              onClick={() => handleSelectTeam(team)}
            />
          ))}
        </SimpleGrid>
      )}

      {selectedTeam && (
        <>
          <Heading mt={10} mb={4}>
            Players for {selectedTeam.name}
          </Heading>

          {loadingPlayers ? (
            <Spinner size="lg" />
          ) : (
            <SimpleGrid columns={[1, 2, 3]} spacing={6}>
              {players.map((player) => (
                <PlayerCard key={player.playerId} player={player} />
              ))}
            </SimpleGrid>
          )}
        </>
      )}
    </Box>
  );
}
