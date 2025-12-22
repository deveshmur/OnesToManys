// src/react/src/pages/Database.jsx
import { useEffect, useState } from "react";
import {
  SimpleGrid,
  Box,
  Heading,
  Spinner,
  Alert,
  AlertIcon,
  Input,
  Button,
  FormControl,
  FormLabel,
  Stack,
} from "@chakra-ui/react";
import {
  getAllTeams,
  createTeam,
  updateTeam,
  deleteTeam,
} from "../utils/api";
import TeamCard from "../components/TeamCard";

export default function Database() {
  const [teams, setTeams] = useState([]);
  const [filtered, setFiltered] = useState([]);
  const [loadingTeams, setLoadingTeams] = useState(true);
  const [error, setError] = useState(null);
  const [search, setSearch] = useState("");

  // Create team form
  const [newName, setNewName] = useState("");
  const [newCity, setNewCity] = useState("");
  const [newStadium, setNewStadium] = useState("");

  // Edit team form
  const [editingTeam, setEditingTeam] = useState(null);
  const [editName, setEditName] = useState("");
  const [editCity, setEditCity] = useState("");
  const [editStadium, setEditStadium] = useState("");

  useEffect(() => {
    async function loadTeams() {
      try {
        setLoadingTeams(true);
        setError(null);
        const data = await getAllTeams();
        setTeams(data);
        setFiltered(data);
      } catch (err) {
        console.error(err);
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

  const handleCreateTeam = async (e) => {
    e.preventDefault();
    if (!newName || !newCity) return;

    try {
      setError(null);
      const created = await createTeam({
        name: newName,
        city: newCity,
        stadium: newStadium || "",
      });
      const updatedTeams = [...teams, created];
      setTeams(updatedTeams);
      // reset filter
      setNewName("");
      setNewCity("");
      setNewStadium("");
    } catch (err) {
      console.error(err);
      setError("Failed to create team.");
    }
  };

  const handleStartEditTeam = (team) => {
    setEditingTeam(team);
    setEditName(team.name);
    setEditCity(team.city);
    setEditStadium(team.stadium || "");
  };

  const handleUpdateTeam = async (e) => {
    e.preventDefault();
    if (!editingTeam) return;

    try {
      setError(null);
      const updated = await updateTeam(editingTeam.teamId, {
        name: editName,
        city: editCity,
        stadium: editStadium,
      });
      const newTeams = teams.map((t) =>
        t.teamId === updated.teamId ? updated : t
      );
      setTeams(newTeams);
      setEditingTeam(null);
    } catch (err) {
      console.error(err);
      setError("Failed to update team.");
    }
  };

  const handleDeleteTeam = async (teamId) => {
    try {
      setError(null);
      await deleteTeam(teamId);
      const newTeams = teams.filter((t) => t.teamId !== teamId);
      setTeams(newTeams);
    } catch (err) {
      console.error(err);
      setError("Failed to delete team.");
    }
  };

  return (
    <Box p={10}>
      <Heading mb={6} color="black">
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

      {error && (
        <Alert status="error" maxW="600px" mx="auto" mb={6}>
          <AlertIcon />
          {error}
        </Alert>
      )}

      {loadingTeams ? (
        <Spinner size="xl" />
      ) : (
        <SimpleGrid columns={[1, 2, 3]} spacing={8} mb={10}>
          {filtered.map((team) => (
            <TeamCard
              key={team.teamId}
              team={team}
              onEdit={handleStartEditTeam}
              onDelete={handleDeleteTeam}
            />
          ))}
        </SimpleGrid>
      )}

      {/* Create Team */}
      <Box
        maxW="600px"
        mx="auto"
        p={6}
        bg="white"
        borderRadius="lg"
        boxShadow="md"
        mb={8}
      >
        <Heading size="md" mb={4} color="black">
          Create New Team
        </Heading>
        <form onSubmit={handleCreateTeam}>
          <Stack spacing={4}>
            <FormControl isRequired>
              <FormLabel>Name</FormLabel>
              <Input
                value={newName}
                onChange={(e) => setNewName(e.target.value)}
                bg="gray.100"
              />
            </FormControl>
            <FormControl isRequired>
              <FormLabel>City</FormLabel>
              <Input
                value={newCity}
                onChange={(e) => setNewCity(e.target.value)}
                bg="gray.100"
              />
            </FormControl>
            <FormControl>
              <FormLabel>Stadium</FormLabel>
              <Input
                value={newStadium}
                onChange={(e) => setNewStadium(e.target.value)}
                bg="gray.100"
              />
            </FormControl>
            <Button type="submit" colorScheme="teal">
              Create Team
            </Button>
          </Stack>
        </form>
      </Box>

      {/* Edit Team */}
      {editingTeam && (
        <Box
          maxW="600px"
          mx="auto"
          p={6}
          bg="white"
          borderRadius="lg"
          boxShadow="md"
        >
          <Heading size="md" mb={4} color="black">
            Edit Team: {editingTeam.name}
          </Heading>
          <form onSubmit={handleUpdateTeam}>
            <Stack spacing={4}>
              <FormControl isRequired>
                <FormLabel>Name</FormLabel>
                <Input
                  value={editName}
                  onChange={(e) => setEditName(e.target.value)}
                  bg="gray.100"
                />
              </FormControl>
              <FormControl isRequired>
                <FormLabel>City</FormLabel>
                <Input
                  value={editCity}
                  onChange={(e) => setEditCity(e.target.value)}
                  bg="gray.100"
                />
              </FormControl>
              <FormControl>
                <FormLabel>Stadium</FormLabel>
                <Input
                  value={editStadium}
                  onChange={(e) => setEditStadium(e.target.value)}
                  bg="gray.100"
                />
              </FormControl>
              <Stack direction="row" spacing={3}>
                <Button type="submit" colorScheme="teal">
                  Save Changes
                </Button>
                <Button
                  variant="outline"
                  onClick={() => setEditingTeam(null)}
                >
                  Cancel
                </Button>
              </Stack>
            </Stack>
          </form>
        </Box>
      )}
    </Box>
  );
}
