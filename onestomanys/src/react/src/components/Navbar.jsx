import { Box, Flex, Link } from "@chakra-ui/react";
import { Link as RouterLink } from "react-router-dom";

export default function Navbar() {
  return (
    <Box bg="blue.600" color="white" px={8} py={4} boxShadow="sm">
      <Flex justify="space-between" align="center">
        <Link
          as={RouterLink}
          to="/"
          fontSize="xl"
          fontWeight="bold"
          _hover={{ textDecoration: "none", color: "blue.200" }}
        >
          Home
        </Link>

        <Flex gap={6}>
          <Link
            as={RouterLink}
            to="/database"
            fontSize="lg"
            _hover={{ textDecoration: "none", color: "blue.200" }}
          >
            Database
          </Link>
        </Flex>
      </Flex>
    </Box>
  );
}
