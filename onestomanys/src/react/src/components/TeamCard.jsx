import { Box, Heading, Text } from "@chakra-ui/react";

export default function TeamCard({ team, onClick }) {
  return (
    <Box
      borderWidth="1px"
      borderRadius="lg"
      p={4}
      bg="blue.50"
      _hover={{ bg: "blue.100" }}
      cursor="pointer"
      onClick={onClick}
    >
      <Heading size="md">{team.name}</Heading>
      <Text>{team.city}</Text>
      <Text fontSize="sm" color="gray.600">
        Stadium: {team.stadium}
      </Text>
    </Box>
  );
}
