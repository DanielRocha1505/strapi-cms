import Card from "/src/components/Card";
import Typography from "@mui/material/Typography";
import Masonry from "@mui/lab/Masonry";
import { Container, Stack } from "@mui/material";

export default function LatestNews({ title, articles, buttons }) {
  return (
    <Container
      sx={{
        mb: 4,
      }}
    >
      <Typography variant="h4" sx={{ mb: 3 }}>
        {title}
      </Typography>
      <Masonry columns={{ sm: 2, xs: 1, md: 3, lg: 4 }} spacing={2}>
        {articles.data.map((article, i) => {
          return <Card key={i} {...article.attributes} />;
        })}
      </Masonry>
    </Container>
  );
}
