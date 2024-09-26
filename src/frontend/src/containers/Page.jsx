import { useParams } from "react-router-dom";
import PAGE_QUERY from "/src/queries/page";
import Query from "/src/components/Query";
import Error from "/src/components/Error";
import Seo from "/src/components/Seo";
import { Typography, Container } from "@mui/material";
import { get } from "lodash";
import { renderComponent } from "/src/components/loader";
import ReactMarkdown from "react-markdown";
import Breadcrumb from "../components/Breadcrumb";
import Box from "@mui/material/Box";

const Page = () => {
  const { slug } = useParams();
  return (
    <Query query={PAGE_QUERY} params={{ slug }}>
      {({ data: { pages } }) => {
        if (pages.data.length) {
          const page = get(pages, "data[0].attributes");
          const title = get(page, "title");
          const description = get(page, "description");
          const before = get(page, "before");
          const content = get(page, "content");
          const after = get(page, "after");
          const seo = get(page, "seo");
          return (
            <>
              <Seo
                seo={{
                  ...seo,
                  metaTitle: seo?.metTitle || title,
                  metaDescription: seo?.metaDescription || description,
                }}
              />
              {before.map((item, i) => renderComponent(item, i))}
              <Box sx={{ p: 1, mr: 4, ml: 4 }}>
                <Breadcrumb></Breadcrumb>
              </Box>

              <Container>
                <Typography variant="h2" sx={{ pt: 2 }}>
                  {title}
                </Typography>
                <ReactMarkdown>{content}</ReactMarkdown>
                {after.map((item, i) => renderComponent(item, i))}
              </Container>
            </>
          );
        } else {
          return <Error message="404" />;
        }
      }}
    </Query>
  );
};
export default Page;
