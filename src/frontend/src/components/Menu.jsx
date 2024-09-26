import Box from "@mui/material/Box";
import List from "@mui/material/List";
import ListItem from "@mui/material/ListItem";
import ListItemButton from "@mui/material/ListItemButton";
import ListItemText from "@mui/material/ListItemText";

export default function Menu({ items }) {
  return (
    <Box sx={{ width: "100%", maxWidth: 360 }}>
      <nav aria-label="secondary mailbox folders">
        <List>
          {items.map((item, i) => {
            return (
              <ListItem key={i} disablePadding>
                <ListItemButton component="a" href={item.url}>
                  <ListItemText primary={item.title} />
                </ListItemButton>
              </ListItem>
            );
          })}
        </List>
      </nav>
    </Box>
  );
}
