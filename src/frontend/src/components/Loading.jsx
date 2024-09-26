import Box from "@mui/material/Box";
import Skeleton from "@mui/material/Skeleton";
import Stack from "@mui/material/Stack";

export default function Loading() {
  return (
    <Box sx={{ p: 5 }}>
      <Stack spacing={1}>
        <Box sx={{ height: 40 }}>
          <Stack spacing={1} direction="row">
            <Skeleton variant="circular" width={40} height={40} />{" "}
            <Skeleton variant="text" sx={{ width: "100%", fontSize: "1rem" }} />
          </Stack>
        </Box>
        <Skeleton variant="rectangular" width="100%" height={60} />
        <Skeleton variant="rounded" width="100%" height={60} />
      </Stack>
    </Box>
  );
}
