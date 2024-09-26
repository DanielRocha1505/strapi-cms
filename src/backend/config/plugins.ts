export default () => ({
  "import-export-entries": {
    enabled: true,
  },
  "react-icons": true,
  "drag-drop-content-types": {
    enabled: true,
  },
  seo: {
    enabled: true,
  },
  menus: {
    config: {
      maxDepth: 3,
      layouts: {
        menuItem: {
          link: [            
            {
              input: {
                label: "Icon",
                name: "icon",
                type: "customField",
                customField: "plugin::react-icons.icon",
              },
              grid: {
                col: 6,
              },
            },
          ],
          card: [
            {
              input: {
                label: "Description",
                name: "description",
                type: "textarea",
              },
            },
            {
              input: {
                label: "Image",
                name: "image",
                type: "media",
              },
            },
          ],
        },
      },
    },
  },
});
