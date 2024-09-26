import { Outlet } from "react-router-dom";
import React, { useState } from "react";
import Query from "/src/components/Query";
import { get } from "lodash";
import CATEGORIES_QUERY from "/src/queries/categories";
import Menu from "/src/components/Menu";
import { Typography } from "@mui/material";
import Grid from "@mui/material/Grid2";
import OutlinedInput from "@mui/material/OutlinedInput";
import Stack from "@mui/material/Stack";
import InputAdornment from "@mui/material/InputAdornment";
import FormControl from "@mui/material/FormControl";
import SearchIcon from "@mui/icons-material/Search";
import { useSearchParams } from "react-router-dom";
import { useNavigate } from "react-router-dom";
import Breadcrumb from "../components/Breadcrumb";

export default function Blog() {
  const [searchParams] = useSearchParams();
  const [searchInput, setSearchInput] = useState(searchParams.get("search") || "");
  const navigate = useNavigate();
  const handleChange = (e) => {
    e.preventDefault();
    setSearchInput(e.target.value);
  };
  const handleSubmit = (e) => {
    if (e.key === "Enter") {
      navigate(`/blog?search=${e.target.value}`);
    }
  };
  return (
    <Grid container spacing={4} sx={{ mr: 4, ml: 4 }}>
      <Grid size={12} sx={{p:1}}>
        <Breadcrumb></Breadcrumb>
      </Grid>
      <Grid size={12}>
        <Stack
          direction="row"
          spacing={2}
          useFlexGap
          flexWrap="wrap"
          justifyContent="space-between"
          alignItems={"flex-end"}
          sx={{ mb: 5 }}
        >
          <Typography variant="h2" sx={{ pt: 2 }}>          
            Blog
          </Typography>
          <FormControl
            variant="standard"
            sx={{
              width: "60%",
            }}
          >
            <OutlinedInput
              id="search"
              fullWidth
              sx={{
                p: 0,
                pl: 2,
                maxHeight: "45px",
              }}
              onChange={handleChange}
              onKeyDown={handleSubmit}
              startAdornment={
                <InputAdornment position="start">
                  <SearchIcon />
                </InputAdornment>
              }
              value={searchInput}
            />
          </FormControl>
        </Stack>
      </Grid>
      <Grid size={3}>
        <Query query={CATEGORIES_QUERY}>
          {({ data: { categories } }) => {
            if (categories.data.length) {
              let menu = [];
              categories.data.map((item) => {
                let link = get(item, "attributes");
                link.url = `/blog/categories/${link.slug}`;
                link.title =
                  link.name.charAt(0).toUpperCase() + link.name.slice(1);
                menu.push(link);
              });
              return <Menu items={menu} />;
            }
          }}
        </Query>
      </Grid>
      <Grid size={9}>
        <Outlet />
      </Grid>
    </Grid>
  );
}
