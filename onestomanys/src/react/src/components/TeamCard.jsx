// src/react/src/components/TeamCard.jsx
import { Box, Heading, Text, Button, Flex } from "@chakra-ui/react";
import { useNavigate } from "react-router-dom";

export default function TeamCard({ team, onEdit, onDelete }) {
  const navigate = useNavigate();

  const handleCardClick = () => {
    navigate(`/teams/${team.teamId}`);
  };

  const handleEditClick = (e) => {
    e.stopPropagation();
    if (onEdit) onEdit(team);
  };

  const handleDeleteClick = (e) => {
    e.stopPropagation();
    if (onDelete) onDelete(team.teamId);
  };

  return (
    <Box
      borderWidth="1px"
      borderRadius="lg"
      p={6}
      bg="gray.500"
      _hover={{ bg: "cyan", transform: "scale(1.03)" }}
      transition="all 0.2s"
      cursor="pointer"
      onClick={handleCardClick}
      boxShadow="sm"
    >
      <Heading size="md" mb={2}>
        {team.name}
      </Heading>
      <Text fontWeight="semibold">{team.city}</Text>
      <Text fontSize="sm" color="gray.700" mb={4}>
        Stadium: {team.stadium}
      </Text>

      {(onEdit || onDelete) && (
        <Flex gap={2}>
          {onEdit && (
            <Button size="sm" colorScheme="orange" onClick={handleEditClick}>
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
