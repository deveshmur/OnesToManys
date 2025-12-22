import { Box, Heading, Text, VStack, Divider } from "@chakra-ui/react";

export default function Home() {
  return (
    <Box
      w="100%"
      py={28}
      px={6}
      textAlign="center"
      bgGradient="linear(to-b, blue.800, black)"
      color="white"
      boxShadow="lg"
    >
      <VStack spacing={6}>

        <Heading
          size="3xl"
          letterSpacing="wide"
          fontWeight="extrabold"
          textShadow="0px 0px 25px rgba(0,0,0,0.6)"
        >
          Welcome to the 2024–2025 NFL Database
        </Heading>

        <Divider
          w="120px"
          borderWidth="2px"
          borderColor="blue.300"
          opacity={0.9}
        />

        <Text
          fontSize="xl"
          maxW="600px"
          color="whiteAlpha.900"
          textShadow="0px 0px 8px rgba(0,0,0,0.4)"
        >
          Explore teams, players, stats, and more.  
          Click the Database tab to get started.
        </Text>
      </VStack>
    </Box>
  );
}
