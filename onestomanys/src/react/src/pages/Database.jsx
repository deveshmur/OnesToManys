import { useEffect, useState } from "react";
import {
  SimpleGrid,
  Box,
  Heading,
  Spinner,
  Alert,
  AlertIcon,
  Input,
} from "@chakra-ui/react";
import { getAllTeams } from "../utils/api";
import TeamCard from "../components/TeamCard";

export default function Database() {
  const [teams, setTeams] = useState([]);
  const [filtered, setFiltered] = useState([]);
  const [loadingTeams, setLoadingTeams] = useState(true);
  const [error, setError] = useState(null);
  const [search, setSearch] = useState("");

  useEffect(() => {
    async function loadTeams() {
      try {
        setLoadingTeams(true);
        const data = await getAllTeams();
        setTeams(data);
        setFiltered(data);
      } catch (err) {
        setError("Failed to load teams. Backend may be offline.");
      } finally {
        setLoadingTeams(false);
      }
    }
    loadTeams();
  }, []);

  useEffect(() => {
    const lower = search.toLowerCase();
    setFiltered(
      teams.filter(
        (t) =>
          t.name.toLowerCase().includes(lower) ||
          t.city.toLowerCase().includes(lower)
      )
    );
  }, [search, teams]);

  return (
    <Box p={10}>
      <Heading mb={6} color="white">
        Teams
      </Heading>

      <Input
        placeholder="Search teams..."
        value={search}
        onChange={(e) => setSearch(e.target.value)}
        mb={8}
        bg="white"
        color="black"
        maxW="400px"
        mx="auto"
        boxShadow="md"
      />

      {loadingTeams ? (
        <Spinner size="xl" />
      ) : error ? (
        <Alert status="error" maxW="600px" mx="auto">
          <AlertIcon />
          {error}
        </Alert>
      ) : (
        <SimpleGrid columns={[1, 2, 3]} spacing={8}>
          {filtered.map((team) => (
            <TeamCard key={team.teamId} team={team} />
          ))}
        </SimpleGrid>
      )}
    </Box>
  );
}
