import Query from "/src/components/Query";
import Seo from "/src/components/Seo";
import HOME_QUERY from "/src/queries/home";
import { get } from "lodash";
import { renderComponent } from "/src/components/loader";

const Home = () => {
  return (
    <Query query={HOME_QUERY}>
      {({ data: { homePage } }) => {
        const seo = get(homePage, "data.attributes.seo");
        const content = get(homePage, "data.attributes.content");
        return (
          <>
            <Seo seo={seo} />
            {content.map((item, i) => renderComponent(item, i))}
          </>
        );
      }}
    </Query>
  );
};

export default Home;
