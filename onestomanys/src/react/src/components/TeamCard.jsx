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
      p={6}
      borderRadius="xl"
      bg="rgba(255,255,255,0.1)"
      backdropFilter="blur(6px)"
      border="1px solid rgba(255,255,255,0.2)"
      boxShadow="0 4px 20px rgba(0,0,0,0.35)"
      transition="all 0.25s ease"
      cursor="pointer"
      onClick={handleCardClick}
      _hover={{
        transform: "scale(1.05)",
        boxShadow: "0 6px 30px rgba(0,0,0,0.55)",
        borderColor: "blue.300",
      }}
    >
      <Heading size="lg" color="blue.200" mb={1}>
        {team.name}
      </Heading>

      <Text fontSize="lg" fontWeight="semibold" color="white">
        {team.city}
      </Text>

      <Box my={3} borderBottom="1px solid rgba(255,255,255,0.3)" />

      <Text fontSize="sm" color="blue.100" mb={4}>
        Stadium: {team.stadium}
      </Text>

      {(onEdit || onDelete) && (
        <Flex gap={3}>
          {onEdit && (
            <Button
              size="sm"
              colorScheme="orange"
              onClick={handleEditClick}
              variant="solid"
            >
              Edit
            </Button>
          )}
          {onDelete && (
            <Button
              size="sm"
              colorScheme="red"
              onClick={handleDeleteClick}
              variant="solid"
            >
              Delete
            </Button>
          )}
        </Flex>
      )}
    </Box>
  );
}
