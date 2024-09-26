'use strict';

const MonacoWebpackPlugin = require('monaco-editor-webpack-plugin');

/* eslint-disable no-unused-vars */
module.exports = (config) => {
  config.plugins.push(new MonacoWebpackPlugin());
  return config;
};
