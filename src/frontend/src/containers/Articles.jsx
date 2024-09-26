import React from "react";
import Query from "/src/components/Query";
import Masonry from "@mui/lab/Masonry";
import { get } from "lodash";
import Card from "/src/components/Card";
import Pagination from "/src/components/Pagination";
import Seo from "/src/components/Seo";
import Error from "/src/components/Error";
import { ARTICLES_QUERY } from "/src/queries/article";
import { useSearchParams } from "react-router-dom";

const Articles = () => {
  const [searchParams] = useSearchParams();
  const page = parseInt(searchParams.get("page")) || 1;
  const pageSize = parseInt(searchParams.get("pageSize")) || 10;
  const search = searchParams.get("search");

  return (
    <Query query={ARTICLES_QUERY} params={{ page, pageSize, search }}>
      {({ data: { articles } }) => {
        const pageCount = get(articles, "meta.pagination.pageCount");
        const pagination = <Pagination pageCount={pageCount} />;
        if (articles.data.length) {
          return (
            <>
              <Seo seo={seo} />
              <Masonry columns={{ sm: 2, xs: 1, md: 3, lg: 4 }} spacing={2}>
                {articles.data.map((article, i) => {
                  return <Card key={i} {...get(article, "attributes")}></Card>;
                })}
              </Masonry>
              {pagination}
            </>
          );
        } else {
          return (
            <>
              <Error message="204" back="/blog"></Error>
              {pagination}
            </>
          );
        }
      }}
    </Query>
  );
};

export default Articles;
