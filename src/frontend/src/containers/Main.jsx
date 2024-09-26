import Box from "@mui/material/Box";
import { Outlet, useNavigate, useRouteLoaderData } from "react-router-dom";
import { get } from "lodash";
import AppBar from "@mui/material/AppBar";
import IconButton from "@mui/material/IconButton";
import MenuIcon from "@mui/icons-material/Menu";
import Toolbar from "@mui/material/Toolbar";
import Typography from "@mui/material/Typography";
import MegaMenu from "../components/MegaMenu";

export default function Main() {
  const navigate = useNavigate();
  const { global, menus } = useRouteLoaderData("global");
  return (
    <Box sx={{ flexGrow: 1 }}>
      <AppBar component="nav">
        <Toolbar>
          <IconButton
            color="inherit"
            aria-label="open drawer"
            edge="start"
            sx={{ mr: 2, display: { sm: "none" } }}
          >
            <MenuIcon />
          </IconButton>
          <Typography
            variant="h6"
            component="a"
            href="/"
            sx={{
              color: "#fff",
              textDecoration: "none",
              flexGrow: 1,
              display: { xs: "none", sm: "block" },
            }}
          >
            {global.siteName}
          </Typography>
          <Box sx={{ display: { xs: "none", sm: "block" } }}>
            <MegaMenu items={menus.get("top")} />
          </Box>
        </Toolbar>
      </AppBar>
      <Box sx={{ mt: 8 }}>
        <Outlet />
      </Box>
    </Box>
  );
}
