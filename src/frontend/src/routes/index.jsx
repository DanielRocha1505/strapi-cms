import HomePage from "/src/containers/HomePage";
import Article from "/src/containers/Article";
import Articles from "/src/containers/Articles";
import Blog from "/src/containers/Blog";
import Section from "/src/containers/Section";
import Page from "/src/containers/Page";
import Category from "/src/containers/Category";
import Main from "/src/containers/Main";
import Error from "/src/components/Error";
import { Breadcrumb } from "/src/components/Breadcrumb";
import { Outlet } from "react-router-dom";
import CATEGORIES_QUERY from "/src/queries/categories";
import ARTICLE_QUERY from "/src/queries/article";
import SECTION_QUERY from "/src/queries/section";
import PAGE_QUERY from "/src/queries/page";
import GLOBAL_QUERY from "/src/queries/global";
import client from "/src/utils/ApolloClient";
import { nestMenuItems } from "/src/utils/common";
import { get } from "lodash";

const AppRoutes = [
  {
    id: "global",
    path: "/",
    element: <Main />,
    handle: {
      crumb: (key) => <Breadcrumb key={key} route="/" icon="home" />,
    },
    loader: async () => {
      const { data } = await client.query({
        query: GLOBAL_QUERY,
        fetchPolicy: "no-cache",
      });
      const menus = new Map();
      data?.menusMenus?.data.map((item) => {
        const slug = get(item, "attributes.slug");
        const menu = get(item, "attributes.items.data");
        menus.set(slug, nestMenuItems(menu));
      });
      return (
        {
          global: data?.global?.data?.attributes,
          menus,
        } || null
      );
    },
    errorElement: <Error />,
    children: [
      {
        index: true,
        element: <HomePage />,
      },
      {
        path: "blog",
        element: <Blog />,
        handle: {
          crumb: (key) => (
            <Breadcrumb key={key} route="/blog">
              Blog
            </Breadcrumb>
          ),
        },
        children: [
          {
            index: true,
            element: <Articles />,
          },
          {
            path: "categories",
            element: <Outlet />,
            handle: {
              crumb: (key) => (
                <Breadcrumb key={key} route="/blog/categories">
                  Categories
                </Breadcrumb>
              ),
            },
            children: [
              {
                index: true,
                element: <Category />,
              },
              {
                id: "category",
                path: ":category",
                element: <Category />,
                handle: {
                  crumb: (key, params, loaderData) => {
                    return (
                      <Breadcrumb
                        key={key}
                        route={`/blog/categories/${params?.category}`}
                        icon={loaderData?.icon}
                      >
                        {loaderData?.name}
                      </Breadcrumb>
                    );
                  },
                },
                loader: async (e) => {
                  const { data } = await client.query({
                    query: CATEGORIES_QUERY,
                    variables: { slug: e.params.category },
                    fetchPolicy: "no-cache",
                  });
                  return data?.categories?.data[0]?.attributes || null;
                },
              },
            ],
          },
          {
            path: "articles",
            children: [
              {
                index: true,
                element: <Articles />,
              },
              {
                id: "article",
                path: ":slug",
                element: <Article />,
                handle: {
                  crumb: (key, params, loaderData) => {
                    return (
                      <Breadcrumb
                        key={key}
                        route={`/blog/articles/${params?.slug}`}
                        icon={loaderData?.icon}
                      >
                        {loaderData?.title}
                      </Breadcrumb>
                    );
                  },
                },
                loader: async (e) => {
                  const { data } = await client.query({
                    query: ARTICLE_QUERY,
                    variables: { slug: e.params.slug },
                    fetchPolicy: "no-cache",
                  });
                  return data?.articles?.data[0]?.attributes || null;
                },
              },
            ],
          },
        ],
      },
      {
        id: "section",
        path: ":section",
        handle: {
          crumb: (key, params, loaderData) => {
            return (
              <Breadcrumb
                key={key}
                route={`/${params?.section}`}
                icon={loaderData?.icon}
              >
                {loaderData?.title}
              </Breadcrumb>
            );
          },
        },
        loader: async (e) => {
          const { data } = await client.query({
            query: SECTION_QUERY,
            variables: { slug: e.params.section },
            fetchPolicy: "no-cache",
          });
          return data?.sections?.data[0]?.attributes || null;
        },
        children: [
          {
            index: true,
            element: <Section />,
          },
          {
            id: "page",
            path: ":slug",
            element: <Page />,
            handle: {
              crumb: (key, params, loaderData) => {
                return (
                  <Breadcrumb
                    key={key}
                    route={`/${params?.section}/${params?.slug}`}
                    icon={loaderData?.icon}
                  >
                    {loaderData?.title}
                  </Breadcrumb>
                );
              },
            },
            loader: async (e) => {
              const { data } = await client.query({
                query: PAGE_QUERY,
                variables: { slug: e.params.slug },
                fetchPolicy: "no-cache",
              });
              return data?.pages?.data[0]?.attributes || null;
            },
          },
        ],
      },
    ],
  },
];

export default AppRoutes;
