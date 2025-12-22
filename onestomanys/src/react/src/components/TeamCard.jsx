import { Box, Heading, Text } from "@chakra-ui/react";
import { useNavigate } from "react-router-dom";

export default function TeamCard({ team }) {
  const navigate = useNavigate();

  return (
    <Box
      borderWidth="1px"
      borderRadius="lg"
      p={6}
      bg="gray.500"
      _hover={{ bg: "cyan", transform: "scale(1.03)" }}
      transition="all 0.2s"
      cursor="pointer"
      onClick={() => navigate(`/teams/${team.teamId}`)}
      boxShadow="sm"
    >
      <Heading size="md" mb={2}>
        {team.name}
      </Heading>
      <Text fontWeight="semibold">{team.city}</Text>
      <Text fontSize="sm" color="gray.700">
        Stadium: {team.stadium}
      </Text>
    </Box>
  );
}
