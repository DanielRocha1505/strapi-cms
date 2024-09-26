import gql from "graphql-tag";
import { fragmentAuthor } from "./fragments/author";
import { fragmentCategories } from "./fragments/catetory";
import commonFragments from "./fragments/common";

const CATEGORIES_QUERY = gql`
query Categories($slug: String) {
  categories(filters: { slug: { eq: $slug } }) {
    data {
      attributes {
        slug
        name
      }
    }
  }
}
`;

export const CATEGORY_QUERY = gql`
query Category(
  $search: String = ""
  $page: Int = 1
  $pageSize: Int = 10
  $category: String = ""
) {
  articles(
    filters: {
      and: [
        { 
          categories:
          { slug: { contains: $category } } 
        },
        {
          or: [        		
            { title: { contains: $search } },
            { description: { contains: $search } }
          ]
        }
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

export default CATEGORIES_QUERY;