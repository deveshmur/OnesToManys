// src/react/src/components/PlayerCard.jsx
import { Box, Heading, Text, Button, Flex } from "@chakra-ui/react";

export default function PlayerCard({ player, onEdit, onDelete }) {
  const handleEditClick = () => {
    if (onEdit) onEdit(player);
  };

  const handleDeleteClick = () => {
    if (onDelete) onDelete(player.playerId);
  };

  return (
    <Box
      borderWidth="1px"
      borderRadius="lg"
      p={5}
      bg="gray.500"
      boxShadow="md"
      _hover={{ transform: "scale(1.02)" }}
      transition="all 0.2s ease"
    >
      <Heading size="md" mb={2}>
        {player.name}
      </Heading>
      <Text>Position: {player.position}</Text>
      <Text>Jersey: #{player.jerseyNumber}</Text>
      <Text mb={3}>Height: {player.heightInches} in</Text>

      {(onEdit || onDelete) && (
        <Flex gap={2}>
          {onEdit && (
            <Button size="sm" variant="outline" onClick={handleEditClick}>
              Edit
            </Button>
          )}
          {onDelete && (
            <Button size="sm" colorScheme="red" onClick={handleDeleteClick}>
              Delete
            </Button>
          )}
        </Flex>
      )}
    </Box>
  );
}
