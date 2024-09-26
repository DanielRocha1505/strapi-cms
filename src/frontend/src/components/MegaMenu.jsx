import Typography from "@mui/material/Typography";
import Button from "@mui/material/Button";
import IconComponent from "/src/components/Icon";
import Popover from "@mui/material/Popover";
import Paper from "@mui/material/Paper";
import Box from "@mui/material/Box";
import { Fragment, useState } from "react";
import { get } from "lodash";
import List from "@mui/material/List";
import ListItem from "@mui/material/ListItem";
import ListItemButton from "@mui/material/ListItemButton";
import ListItemIcon from "@mui/material/ListItemIcon";
import ListItemText from "@mui/material/ListItemText";
import { Stack } from "@mui/material";

export default function MegaMenu({ items }) {
  const [hover, setHover] = useState(null);
  const [anchorEl, setAnchorEl] = useState(null);
  const handleHover = (e, i) => {
    setAnchorEl(e.currentTarget);
    setHover(i);
  };
  const handleClose = (e) => {
    setAnchorEl(null);
    setHover(null);
  };

  return (
    <>
      {items.map((item, i) => {
        return (
          <Fragment key={i}>
            <Button
              onClick={(e) => {
                handleHover(e, i);
                //if (item.url) {
                //navigate(item.url);
                //}
              }}
              sx={{ color: "#fff" }}
              startIcon={
                <IconComponent icon={item?.icon} size={20}></IconComponent>
              }
            >
              {item?.title}
            </Button>
            <Popover
              id={i}
              open={hover == i}
              anchorEl={anchorEl}
              anchorReference="anchorPosition"
              onClose={handleClose}
              anchorOrigin={{
                vertical: "top",
                horizontal: "center",
              }}
              transformOrigin={{
                vertical: "top",
                horizontal: "center",
              }}
              marginThreshold={0}
              disableRestoreFocus
              anchorPosition={{ top: 60, left: 0 }}
              slotProps={{
                paper: {
                  onMouseLeave: handleClose,
                  style: {
                    width: "100%",
                    height: 300,
                    top: 50,
                    maxHeight: "unset",
                    maxWidth: "unset",
                  },
                },
              }}
            >
              <Stack direction={"row"}>
                <Paper
                  elevation={3}
                  sx={{
                    pt: "auto",
                    pl: 4,
                    pr: 4,
                    pb: "auto",
                    width: { sm: 300, xs: 100 },
                    height: 300,
                    borderRadius: 0,
                    backgroundImage: `url('${get(
                      item.image,
                      "data.attributes.formats.medium.url"
                    )}')`,
                    clipPath: "polygon(0 0, 100% 0, 74% 100%, 0 100%)",
                    verticalAlign: "bottom",
                    overflow: "visible !important",
                    backgroundSize: "cover",
                    backgroundRepeat: "no-repeat",
                    backgroundPosition: "center",
                  }}
                ></Paper>
                <Box display="flex" sx={{ width: 200 }} alignItems={"center"}>
                  <Typography sx={{ p: 2 }}>{item?.description}</Typography>
                </Box>

                <List>
                  <Box
                    sx={{
                      flexGrow: 1,
                      display: "flex",
                      flexFlow: "column wrap",
                      gap: "0 30px",
                      height: 300, // set the height limit to your liking
                      overflow: "auto",
                    }}
                  >
                    {item.children.map((child, i) => {
                      return (
                        <ListItem key={i} disablePadding sx={{ width: "auto" }}>
                          <ListItemButton>
                            <ListItemIcon>
                              <IconComponent icon={child.icon} size={20} />
                            </ListItemIcon>
                            <ListItemText primary={child.title} />
                          </ListItemButton>
                        </ListItem>
                      );
                    })}
                  </Box>
                </List>
              </Stack>
            </Popover>
          </Fragment>
        );
      })}
    </>
  );
}
