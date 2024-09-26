import React from "react";
import ReactDOM from "react-dom/client";
import { ApolloProvider } from '@apollo/client';
import App from "./containers/App.jsx";
import client from "./utils/apolloClient.ts";
import "./index.css";

const root = ReactDOM.createRoot(document.getElementById("root"));

root.render(  
  <React.StrictMode>
    <ApolloProvider client={client}>
      <App />
    </ApolloProvider>
  </React.StrictMode>
);