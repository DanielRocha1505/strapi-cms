import {
  useNavigate,
  useMatches,
  useParams,
  useRouteLoaderData,
} from "react-router-dom";
import Breadcrumbs from "@mui/material/Breadcrumbs";
import Link from "@mui/material/Link";
import { Typography, useMediaQuery } from "@mui/material";
import FolderOpenIcon from "@mui/icons-material/FolderOpen";
import HomeIcon from "@mui/icons-material/Home";

const icons = {
  home: <HomeIcon sx={{ mr: 0.5 }} fontSize="inherit" />,
  folder: <FolderOpenIcon sx={{ mr: 0.5 }} fontSize="inherit" />  
};

export function Breadcrumb({ icon, route, children }) {
  const navigate = useNavigate();

  const handleClick = (route, event) => {
    event.preventDefault();
    if (route) navigate(route);
  };
  return (
    <>
      {route ? (
        <Link
          underline="hover"
          sx={{ display: "flex", alignItems: "center" }}
          color="inherit"
          href={route}
          onClick={(e) => {
            handleClick(item.route, e);
          }}
        >
          {icon && icons[icon] ? icons[icon] : icons["folder"]}
          {children}
        </Link>
      ) : (
        <Typography>{children}</Typography>
      )}
    </>
  );
}

export default function BreadcrumbsComponent() {  
  const matches = useMatches();
  const params = useParams();
  const size = useMediaQuery((theme) => theme.breakpoints.up("md")) ? 10 : 3;
  const crumbs = matches
    .filter((match) => Boolean(match.handle?.crumb))
    .map((match, index) =>
      match.handle.crumb("bc_" + index, params, useRouteLoaderData(match?.id))
    );
  return (
    <Breadcrumbs
      itemsAfterCollapse={2}
      aria-label="breadcrumb"
      itemsBeforeCollapse={1}
      maxItems={size}
      separator="›"
      sx={{ mb: 2 }}
    >
      {crumbs.map((item) => {
        return item;
      })}
    </Breadcrumbs>
  );
}
