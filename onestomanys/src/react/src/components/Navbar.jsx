import { Box, Flex, Link, Heading } from "@chakra-ui/react";
import { Link as RouterLink } from "react-router-dom";

export default function Navbar() {
  return (
    <Box bg="blue.700" color="white" px={10} py={5} boxShadow="md">
      <Flex justify="space-between" align="center">
        <Heading size="lg">
          <Link as={RouterLink} to="/" _hover={{ textDecoration: "none", color: "blue.200" }}>
            NFL Database
          </Link>
        </Heading>

        <Flex gap={8}>
          <Link
            as={RouterLink}
            to="/"
            fontSize="lg"
            fontWeight="medium"
            _hover={{ color: "blue.200" }}
          >
            Home
          </Link>

          <Link
            as={RouterLink}
            to="/database"
            fontSize="lg"
            fontWeight="medium"
            _hover={{ color: "blue.200" }}
          >
            Database
          </Link>
        </Flex>
      </Flex>
    </Box>
  );
}
