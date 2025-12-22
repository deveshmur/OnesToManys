import { Box, Heading, Text } from "@chakra-ui/react";

export default function Home() {
  return (
    <Box p={10} textAlign="center">
      <Heading mb={4} color="black">
        Welcome to the 2024-2025 NFL Database
      </Heading>
      <Text fontSize="lg" color="gray.900">
        Explore NFL teams and their players. Click “Database” to begin.
      </Text>
    </Box>
  );
}
