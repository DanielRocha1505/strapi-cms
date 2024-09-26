import gql from "graphql-tag";
import commonFragments from "./fragments/common";
import { elementsButtonFragment, elementsCardFragment } from "./fragments/elements";
import settingsFragments from "./fragments/settings";
import blocksFragments from "./fragments/blocks";
import { fragmentHomePageContentDynamicZone } from "./fragments/dynamicZones"

const HOME_QUERY = gql`
query Home {
    homePage{
    data {
      attributes {
        title
        seo {
          ...fragmentSeo
        }
      	content {
          ...fragmentHomePageContentDynamicZone
        }
      }
    }
  }
}
${fragmentHomePageContentDynamicZone}
${blocksFragments}
${elementsButtonFragment}
${elementsCardFragment}
${commonFragments}
${settingsFragments}
`;

export default HOME_QUERY;