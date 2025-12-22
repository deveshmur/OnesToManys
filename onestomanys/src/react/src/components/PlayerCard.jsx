import { Box, Heading, Text } from "@chakra-ui/react";

export default function PlayerCard({ player }) {
  return (
    <Box
      borderWidth="1px"
      borderRadius="lg"
      p={5}
      bg="white"
      boxShadow="md"
      _hover={{ transform: "scale(1.02)" }}
      transition="all 0.2s ease"
    >
      <Heading size="md" mb={2}>{player.name}</Heading>
      <Text>Position: {player.position}</Text>
      <Text>Jersey: #{player.jerseyNumber}</Text>
      <Text>Height: {player.heightInches} in</Text>
    </Box>
  );
}
