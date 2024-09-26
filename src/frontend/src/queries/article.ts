import gql from "graphql-tag";
import commonFragments from "./fragments/common";
import { fragmentAuthor } from "./fragments/author";
import { fragmentCategories } from "./fragments/catetory";

const ARTICLE_QUERY = gql`
query Article($slug: String) {
  articles(filters: { slug: { eq: $slug } }) {
    data {
      attributes {
        title          
        slug
        description
        content
        categories {
          data {
            attributes {
              slug
              name
            }
          }
        }
        image {
          ...fragmentImage
        }
        author {
          ...fragmentAuthor
        }
        createdAt
        updatedAt
        publishedAt
      }
    }
  }
}
${fragmentAuthor}
${commonFragments}
`;

export const ARTICLES_QUERY = gql`
query Articles(
  $search: String = ""
  $page: Int = 1
  $pageSize: Int = 10
) {
  articles(
    filters: {
      or: [        		
        { title: { contains: $search } },
        { description: { contains: $search } }
      ]
    }
    pagination: { pageSize: $pageSize, page: $page },
    sort: "updatedAt:desc"
  ) {
    data {
      attributes {
        title
        slug
        description
        categories {
          ...fragmentCategories
        }
        image {
          ...fragmentImage
        }
        author {
          ...fragmentAuthor
        }
        createdAt
        updatedAt
        publishedAt
      }
    }
    meta {
      pagination {
        total
        pageCount
        page
      }
    }
  }
}

${fragmentAuthor}
${fragmentCategories}
${commonFragments}
`

export default ARTICLE_QUERY;