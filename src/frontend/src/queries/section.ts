import gql from "graphql-tag";
import commonFragments from "./fragments/common";
import blocksFragments from "./fragments/blocks";
import settingsFragments from "./fragments/settings";
import { elementsButtonFragment, elementsCardFragment } from "./fragments/elements";
import {fragmentSectionContentDynamicZone} from "./fragments/dynamicZones"

const SECTION_QUERY = gql`
  query Section($slug: String) {
    sections(filters: { slug: { eq: $slug } }) {
    data{
      attributes {
        title
        slug
        description
        seo {
          ...fragmentSeo
        }
        content {
          ...fragmentSectionContentDynamicZone
        }
        pages {
          data {
            attributes {
              title
              slug              
              description              
            }
          }
        }
      }
    }
  }
}

${fragmentSectionContentDynamicZone}
${settingsFragments}
${elementsButtonFragment}
${elementsCardFragment}
${blocksFragments}
${commonFragments}
`;

export default SECTION_QUERY;