import { useParams } from "react-router-dom";
import { useEffect, useState } from "react";
import {
  Box,
  Heading,
  Spinner,
  SimpleGrid,
  Button,
  Input,
} from "@chakra-ui/react";
import { getPlayersForTeam } from "../utils/api";
import PlayerCard from "../components/PlayerCard";

export default function TeamDetails() {
  const { teamId } = useParams();
  const [players, setPlayers] = useState([]);
  const [filtered, setFiltered] = useState([]);
  const [loading, setLoading] = useState(true);
  const [search, setSearch] = useState("");

  useEffect(() => {
    async function loadPlayers() {
      setLoading(true);
      const data = await getPlayersForTeam(teamId);
      setPlayers(data);
      setFiltered(data);
      setLoading(false);
    }
    loadPlayers();
  }, [teamId]);

  useEffect(() => {
    const lower = search.toLowerCase();
    setFiltered(
      players.filter(
        (p) =>
          p.name.toLowerCase().includes(lower) ||
          p.position.toLowerCase().includes(lower) ||
          String(p.jerseyNumber).includes(lower)
      )
    );
  }, [search, players]);

  return (
    <Box p={10}>
      <Button mb={6} colorScheme="black" variant="outline" onClick={() => history.back()}>
        ← Back
      </Button>

      <Heading mb={6} color="black">
        Players
      </Heading>

      <Input
        placeholder="Search players..."
        value={search}
        onChange={(e) => setSearch(e.target.value)}
        mb={8}
        bg="white"
        color="black"
        maxW="400px"
        mx="auto"
        boxShadow="md"
      />

      {loading ? (
        <Spinner size="xl" />
      ) : (
        <SimpleGrid columns={[1, 2, 3]} spacing={8}>
          {filtered.map((player) => (
            <PlayerCard key={player.playerId} player={player} />
          ))}
        </SimpleGrid>
      )}
    </Box>
  );
}
