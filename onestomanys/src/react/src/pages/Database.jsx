import { useEffect, useState } from "react";
import { SimpleGrid, Box, Heading, Spinner, Alert, AlertIcon } from "@chakra-ui/react";
import { getAllTeams } from "../utils/api";
import TeamCard from "../components/TeamCard";

export default function Database() {
  const [teams, setTeams] = useState([]);
  const [loadingTeams, setLoadingTeams] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    async function loadTeams() {
      try {
        setLoadingTeams(true);
        const data = await getAllTeams();
        setTeams(data);
      } catch (err) {
        setError("Failed to load teams. Backend may be offline.");
      } finally {
        setLoadingTeams(false);
      }
    }
    loadTeams();
  }, []);

  return (
    <Box p={10}>
      <Heading mb={4} color="blue.700">
        Teams
      </Heading>

      {loadingTeams ? (
        <Spinner size="xl" />
      ) : error ? (
        <Alert status="error" maxW="600px" mx="auto">
          <AlertIcon />
          {error}
        </Alert>
      ) : (
        <SimpleGrid columns={[1, 2, 3]} spacing={8}>
          {teams.map((team) => (
            <TeamCard key={team.teamId} team={team} />
          ))}
        </SimpleGrid>
      )}
    </Box>
  );
}
