import loadable from "@loadable/component";

export const renderComponent = (component, i) => {
  const path = getComponentName(component.__typename);
  try {
    const DynamicComponent = loadable(() => import(`${path}`));
    return <DynamicComponent {...component} key={i}></DynamicComponent>;
  } catch (e) {
    return JSON.stringify(e);
  }
};

export const getComponentName = (str) => {
  const words = str.replace(/([a-z])([A-Z])/g, "$1 $2").split(" ");
  const folders = ["Components", "Blocks", "Elements"];
  let path = "/src/";
  words.map((word, index) => {
    word = word == "Component" ? "Components" : word;
    if (folders.indexOf(word) !== -1) {
      word = `${word}/`;
    }
    path += index == 0 ? word.toLowerCase() : word;
  });
  return path;
};
