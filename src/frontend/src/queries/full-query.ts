import gql from "graphql-tag";
import commonFragments from "./fragments/common";
import settingsFragments from "./fragments/settings";
import componentsFragment from "./fragments/elements";
import blocksFragments from "./fragments/blocks";

const FULL_QUERY = gql`
query($slug: String) {
  # Global content
  global {
    data {
      attributes {
        siteName
        favicon {
          ...fragmentImage
        }
        seo {
          ...fragmentSeo
        }
        mainMenu {
          ...fragmentComponentElementsLink
        }
      }
    }
  }

  categories(filters: { slug: { eq: $slug } }) {
    data {
      attributes {
        slug
        name
        articles {
          data {
            attributes {
              slug
              title
              content
              categories {
                data {
                  attributes {
                    name
                  }
                }
              }
              image {
                ...fragmentImage
              }
            }
          }
        }
      }
    }
  }
  
  articles(filters: { slug: { eq: $slug } }) {
    data {
      attributes {
        slug
        title
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
      }
    }
  }

  # Page content by slug query param
  pages(filters: { slug: { eq: $slug } }) {
    data {
      attributes {
        title
        seo {
          ...fragmentSeo
        }
        before {
          ...fragmentPageBeforeDynamicZone
        }
        content
        after {
          ...fragmentPageAfterDynamicZone
        }
      }
    }
  }
}


# DynamicZones
fragment fragmentPageBeforeDynamicZone on PageBeforeDynamicZone {
  type: __typename
  ...fragmentComponentBlocksHero
}

fragment fragmentPageAfterDynamicZone on PageAfterDynamicZone {
  type: __typename
  ...fragmentComponentBlocksCarousel
  ...fragmentComponentBlocksLatestNews
}


${blocksFragments}
${componentsFragment}
${commonFragments}
${settingsFragments}
`
export default FULL_QUERY