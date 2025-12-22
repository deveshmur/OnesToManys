import { Box, Heading, Text } from "@chakra-ui/react";

export default function PlayerCard({ player }) {
  return (
    <Box borderWidth="1px" borderRadius="lg" p={4} bg="white" boxShadow="sm">
      <Heading size="md">{player.name}</Heading>
      <Text>Position: {player.position}</Text>
      <Text>Jersey: {player.jerseyNumber}</Text>
      <Text>Height: {player.heightInches} inches</Text>
    </Box>
  );
}
