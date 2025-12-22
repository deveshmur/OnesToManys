// src/react/src/pages/TeamDetails.jsx
import { useParams } from "react-router-dom";
import { useEffect, useState } from "react";
import {
  Box,
  Heading,
  Spinner,
  SimpleGrid,
  Button,
  Input,
  FormControl,
  FormLabel,
  Stack,
  Alert,
  AlertIcon,
} from "@chakra-ui/react";
import {
  getPlayersForTeam,
  createPlayerForTeam,
  updatePlayerForTeam,
  deletePlayerFromTeam,
} from "../utils/api";
import PlayerCard from "../components/PlayerCard";

export default function TeamDetails() {
  const { teamId } = useParams();
  const [players, setPlayers] = useState([]);
  const [filtered, setFiltered] = useState([]);
  const [loading, setLoading] = useState(true);
  const [search, setSearch] = useState("");
  const [error, setError] = useState(null);

  // Create player form
  const [newName, setNewName] = useState("");
  const [newPosition, setNewPosition] = useState("");
  const [newJerseyNumber, setNewJerseyNumber] = useState("");
  const [newHeightInches, setNewHeightInches] = useState("");

  // Edit player form
  const [editingPlayer, setEditingPlayer] = useState(null);
  const [editName, setEditName] = useState("");
  const [editPosition, setEditPosition] = useState("");
  const [editJerseyNumber, setEditJerseyNumber] = useState("");
  const [editHeightInches, setEditHeightInches] = useState("");

  useEffect(() => {
    async function loadPlayers() {
      try {
        setLoading(true);
        setError(null);
        const data = await getPlayersForTeam(teamId);
        setPlayers(data);
        setFiltered(data);
      } catch (err) {
        console.error(err);
        setError("Failed to load players. Backend may be offline.");
      } finally {
        setLoading(false);
      }
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

  const handleCreatePlayer = async (e) => {
    e.preventDefault();
    if (!newName || !newPosition || !newJerseyNumber) return;

    try {
      setError(null);
      const created = await createPlayerForTeam(teamId, {
        name: newName,
        position: newPosition,
        jerseyNumber: Number(newJerseyNumber),
        heightInches: newHeightInches
          ? Number(newHeightInches)
          : null,
      });
      const updatedPlayers = [...players, created];
      setPlayers(updatedPlayers);
      setNewName("");
      setNewPosition("");
      setNewJerseyNumber("");
      setNewHeightInches("");
    } catch (err) {
      console.error(err);
      setError("Failed to create player.");
    }
  };

  const handleStartEditPlayer = (player) => {
    setEditingPlayer(player);
    setEditName(player.name);
    setEditPosition(player.position);
    setEditJerseyNumber(player.jerseyNumber || "");
    setEditHeightInches(player.heightInches || "");
  };

  const handleUpdatePlayer = async (e) => {
    e.preventDefault();
    if (!editingPlayer) return;

    try {
      setError(null);
      const updated = await updatePlayerForTeam(teamId, editingPlayer.playerId, {
        name: editName,
        position: editPosition,
        jerseyNumber: Number(editJerseyNumber),
        heightInches: editHeightInches ? Number(editHeightInches) : null,
      });

      const newPlayers = players.map((p) =>
        p.playerId === updated.playerId ? updated : p
      );
      setPlayers(newPlayers);
      setEditingPlayer(null);
    } catch (err) {
      console.error(err);
      setError("Failed to update player.");
    }
  };

  const handleDeletePlayer = async (playerId) => {
    try {
      setError(null);
      await deletePlayerFromTeam(teamId, playerId);
      const newPlayers = players.filter((p) => p.playerId !== playerId);
      setPlayers(newPlayers);
    } catch (err) {
      console.error(err);
      setError("Failed to delete player.");
    }
  };

  return (
    <Box p={10}>
      <Button
        mb={6}
        variant="outline"
        onClick={() => history.back()}
      >
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

      {error && (
        <Alert status="error" maxW="600px" mx="auto" mb={6}>
          <AlertIcon />
          {error}
        </Alert>
      )}

      {loading ? (
        <Spinner size="xl" />
      ) : (
        <SimpleGrid columns={[1, 2, 3]} spacing={8} mb={10}>
          {filtered.map((player) => (
            <PlayerCard
              key={player.playerId}
              player={player}
              onEdit={handleStartEditPlayer}
              onDelete={handleDeletePlayer}
            />
          ))}
        </SimpleGrid>
      )}

      
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
          Create New Player
        </Heading>
        <form onSubmit={handleCreatePlayer}>
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
              <FormLabel>Position</FormLabel>
              <Input
                value={newPosition}
                onChange={(e) => setNewPosition(e.target.value)}
                bg="gray.100"
              />
            </FormControl>
            <FormControl isRequired>
              <FormLabel>Jersey Number</FormLabel>
              <Input
                type="number"
                value={newJerseyNumber}
                onChange={(e) => setNewJerseyNumber(e.target.value)}
                bg="gray.100"
              />
            </FormControl>
            <FormControl>
              <FormLabel>Height (inches)</FormLabel>
              <Input
                type="number"
                value={newHeightInches}
                onChange={(e) => setNewHeightInches(e.target.value)}
                bg="gray.100"
              />
            </FormControl>
            <Button type="submit" colorScheme="teal">
              Create Player
            </Button>
          </Stack>
        </form>
      </Box>

      {/* Edit Player */}
      {editingPlayer && (
        <Box
          maxW="600px"
          mx="auto"
          p={6}
          bg="white"
          borderRadius="lg"
          boxShadow="md"
        >
          <Heading size="md" mb={4} color="black">
            Edit Player: {editingPlayer.name}
          </Heading>
          <form onSubmit={handleUpdatePlayer}>
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
                <FormLabel>Position</FormLabel>
                <Input
                  value={editPosition}
                  onChange={(e) => setEditPosition(e.target.value)}
                  bg="gray.100"
                />
              </FormControl>
              <FormControl isRequired>
                <FormLabel>Jersey Number</FormLabel>
                <Input
                  type="number"
                  value={editJerseyNumber}
                  onChange={(e) => setEditJerseyNumber(e.target.value)}
                  bg="gray.100"
                />
              </FormControl>
              <FormControl>
                <FormLabel>Height (inches)</FormLabel>
                <Input
                  type="number"
                  value={editHeightInches}
                  onChange={(e) => setEditHeightInches(e.target.value)}
                  bg="gray.100"
                />
              </FormControl>
              <Stack direction="row" spacing={3}>
                <Button type="submit" colorScheme="teal">
                  Save Changes
                </Button>
                <Button
                  variant="outline"
                  onClick={() => setEditingPlayer(null)}
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
