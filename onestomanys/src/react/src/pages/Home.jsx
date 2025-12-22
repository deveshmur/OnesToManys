import { Box, Heading, Text } from "@chakra-ui/react";

export default function Home() {
  return (
    <Box p={8}>
      <Heading mb={4}>Welcome to the NFL Browser</Heading>
      <Text fontSize="lg" color="gray.700">
        Use the navigation above to explore NFL teams and their players.
      </Text>
    </Box>
  );
}
