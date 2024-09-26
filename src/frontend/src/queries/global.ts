import gql from "graphql-tag";
import commonFragments from "./fragments/common";
import settingsFragments from "./fragments/settings";

const GLOBAL_QUERY = gql`
query Global {
  menusMenus {
    data {
      attributes {
        title
        slug
        items {
          data {
            id
            attributes {
              parent {
                data {
                  id
                }
              }
              title
              icon
              description
              image {
                ...fragmentImage
              }              
            }
          }
        }
      }
    }
  }
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
      }
    }
  }
}
${commonFragments}
${settingsFragments}
`;

export default GLOBAL_QUERY;