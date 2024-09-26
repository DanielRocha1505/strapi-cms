import { createBrowserRouter, RouterProvider } from "react-router-dom";
import { createTheme, ThemeProvider } from "@mui/material/styles";
import AppRoutes from "/src/routes/index.jsx";
import { CssBaseline } from "@mui/material";
import { HelmetProvider } from "react-helmet-async";

const theme = createTheme({
  palette: {
    mode: "dark",
  },
  components: {
    // Name of the component
    MuiCardHeader: {
      styleOverrides: {
        // Name of the slot
        content: {
          // Some CSS
          overflow: "hidden",
          textOverflow: "ellipsis",
        },
      },
    },
  },
});

function App() {
  const router = createBrowserRouter(AppRoutes);

  return (
    <HelmetProvider>
      <div className="App">
        <ThemeProvider theme={theme}>
          <CssBaseline />
          <RouterProvider router={router} />
        </ThemeProvider>
      </div>
    </HelmetProvider>
  );
}

export default App;
