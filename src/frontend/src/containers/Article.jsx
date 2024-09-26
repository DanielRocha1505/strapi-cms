import moment from "moment";
import React from "react";
import Box from "@mui/material/Box";
import { useParams } from "react-router";
import Query from "/src/components/Query";
import Error from "/src/components/Error";
import ReactMarkdown from "react-markdown";
import { get } from "lodash";
import ARTICLE_QUERY from "/src/queries/article";
import { Container, Typography, Stack, Avatar } from "@mui/material";

const Article = () => {
  let { slug } = useParams();

  return (
    <Query query={ARTICLE_QUERY} params={{ slug }}>
      {({ data: { articles } }) => {
        if (articles.data.length) {
          const article = get(articles, "data[0].attributes");
          const seo = get(article, "seo");
          const imageUrl = get(
            article,
            "image.data.attributes.formats.large.url"
          );
          const title = get(article, "title");
          const description = get(article, "description");
          const content = get(article, "content");
          const authorName = get(article, "author.data.attributes.name");
          const authorPicture = get(
            article,
            "author.data.attributes.picture.data.attributes.formats.small.url"
          );
          const updatedAt = get(article, "updatedAt");

          return (
            <>
              <Seo
                seo={{
                  ...seo,
                  metaTitle: seo?.metTitle || title,
                  metaDescription: seo?.metaDescription || description,
                }}
              />
              <Box>
                <Box
                  sx={{
                    backgroundImage: `url(${imageUrl})`,
                    backgroundPosition: "center",
                    backgroundSize: "cover",
                    clipPath:
                      "polygon(100% 0, 100% 70%, 75% 100%, 0 100%, 0 0)",
                    height: "30vh",
                  }}
                ></Box>
                <Container sx={{ pb: 8 }}>
                  <Typography variant="h2" sx={{ pt: 2 }}>
                    {title}
                  </Typography>
                  <ReactMarkdown>{content}</ReactMarkdown>
                  <Stack
                    direction={"row"}
                    sx={{ mt: 4 }}
                    spacing={2}
                    justifyContent={"space-between"}
                    alignContent={"center"}
                    alignItems={"center"}
                  >
                    <Stack
                      direction={"row"}
                      sx={{ mt: 2 }}
                      spacing={2}
                      alignContent={"center"}
                      alignItems={"center"}
                    >
                      <Avatar alt={authorName} src={authorPicture} />
                      <Typography
                        variant="body2"
                        sx={{ color: "text.secondary" }}
                      >
                        {authorName}
                      </Typography>
                    </Stack>
                    <Typography>
                      {moment(updatedAt).format("DD/MM/YYYY [@] H:m")}
                    </Typography>
                  </Stack>
                </Container>
              </Box>
            </>
          );
        } else {
          return (<Error message="404" />)
        }
      }}
    </Query>
  );
};

export default Article;
