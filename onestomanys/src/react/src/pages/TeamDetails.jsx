import { useParams } from "react-router-dom";
import { useEffect, useState } from "react";
import { Box, Heading, Spinner, SimpleGrid, Button } from "@chakra-ui/react";
import { getPlayersForTeam } from "../utils/api";
import PlayerCard from "../components/PlayerCard";

export default function TeamDetails() {
  const { teamId } = useParams();
  const [players, setPlayers] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function loadPlayers() {
      setLoading(true);
      const data = await getPlayersForTeam(teamId);
      setPlayers(data);
      setLoading(false);
    }
    loadPlayers();
  }, [teamId]);

  return (
    <Box p={10}>
      <Button mb={6} colorScheme="blue" variant="outline" onClick={() => history.back()}>
        ← Back
      </Button>

      <Heading mb={4} color="blue.700">
        Players
      </Heading>

      {loading ? (
        <Spinner size="xl" />
      ) : (
        <SimpleGrid columns={[1, 2, 3]} spacing={8}>
          {players.map((player) => (
            <PlayerCard key={player.playerId} player={player} />
          ))}
        </SimpleGrid>
      )}
    </Box>
  );
}
