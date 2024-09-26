import React from "react";
import { useQuery } from "@apollo/react-hooks";
import Loading from "/src/components/Loading";
import Error from "/src/components/Error";

const Query = ({ children, query, params }) => {
  if (process.env.debug) {
    // console.log(`GQL: \n`, params, query.loc?.source.body);
  }
  if (typeof params == "object")
    Object.keys(params).forEach((k) => params[k] == null && delete params[k]);
  const { data, loading, error } = useQuery(query, {
    variables: params,
    fetchPolicy: "no-cache",
  });

  if (loading) return <Loading />;
  if (error) return <Error />;
  // if (error) return  children({ error });
  // if (error) return <p>Error: {JSON.stringify(error)}</p>;
  return children({ data });
};

export default Query;
