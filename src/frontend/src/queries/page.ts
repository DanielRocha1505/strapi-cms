import gql from "graphql-tag";
import commonFragments from "./fragments/common";
import blocksFragments from "./fragments/blocks";
import settingsFragments from "./fragments/settings";
import {fragmentPageBeforeDynamicZone, fragmentPageAfterDynamicZone} from "./fragments/dynamicZones"
import { elementsButtonFragment, elementsCardFragment } from "./fragments/elements";

const PAGE_QUERY = gql`
query Page($slug: String) {
    pages(filters: { slug: { eq: $slug } }) {
    data{
      attributes {
        title
        slug
        description
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

${fragmentPageBeforeDynamicZone}
${fragmentPageAfterDynamicZone}
${blocksFragments}
${elementsButtonFragment}
${elementsCardFragment}
${settingsFragments}
${commonFragments}
`;

export default PAGE_QUERY;