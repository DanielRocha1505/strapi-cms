// ./src/extensions/menus/strapi-server.js`
"use strict";

module.exports = (plugin) => {
  // Get current `MenuItem` attributes.
  const defaultAttrs = plugin.contentTypes["menu-item"].schema.attributes;

  // Define custom attributes for `MenuItem` the same way they would be defined
  // on any other schema.
  const customAttrs = {
    description: {
      type: "text",
    },
    icon: {
      type: "customField",
      customField: "plugin::react-icons.icon",
    },
    image: {
      type: "media",
      allowedTypes: ["images"],
      multiple: false,
    },
  };

  // Extend the `MenuItem` content type with custom attributes.
  plugin.contentTypes["menu-item"].schema.attributes = {
    ...defaultAttrs,
    ...customAttrs,
  };

  return plugin;
};
