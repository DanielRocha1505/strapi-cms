import React from "react";
import { useParams } from "react-router";
import Query from "/src/components/Query";
import Menu from "/src/components/Menu";
import Error from "/src/components/Error";
import Seo from "/src/components/Seo";
import { get } from "lodash";
import SECTION_QUERY from "/src/queries/section";
import { Typography } from "@mui/material";
import Grid from "@mui/material/Grid2";
import { Stack } from "@mui/material";
import { renderComponent } from "/src/components/loader";
import Breadcrumb from "../components/Breadcrumb";

const Section = () => {
  let { section } = useParams();

  return (
    <Query query={SECTION_QUERY} params={{ slug: section }}>
      {({ data: { sections } }) => {
        if (sections.data.length) {
          const section = get(sections, "data[0].attributes");
          const title = get(section, "title");
          const content = get(section, "content");
          const pages = get(section, "pages.data");
          const seo = get(section, "seo");
          let menu = [];
          pages.map((item) => {
            let link = get(item, "attributes");
            link.url = `/${section.slug}/${link.slug}`;
            menu.push(link);
          });

          return (
            <>
              <Seo seo={seo} />
              <Grid container spacing={4} sx={{ mr: 4, ml: 4 }}>
                <Grid size={12} sx={{ p: 1 }}>
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
                      {title}
                    </Typography>
                  </Stack>
                </Grid>
                <Grid size={3}>
                  <Menu items={menu} />
                </Grid>
                <Grid size={9}>
                  {content.map((item, i) => renderComponent(item, i))}
                </Grid>
              </Grid>
            </>
          );
        } else {
          return <Error message="404" />;
        }
      }}
    </Query>
  );
};

export default Section;
