import loadable from "@loadable/component";
// import { IconType } from 'react-icons';
// import {AiFillAndroid} from 'react-icons/ai';
// interface IIconComponent {
//   icon: string;
//   size?: number;
// }
// export type IReactIcon = string;

const IconComponent = ({ icon, size }) => {
  if (!icon) return "";
  const lib = icon
    .replace(/([a-z0-9])([A-Z])/g, "$1 $2")
    .split(" ")[0]
    .toLowerCase();
  const DynamicIconComponent = loadable(() => import(`react-icons/ai`), {
    resolveComponent: (el) => {
      if (el[icon]) return el[icon];
      else return "div";
    },
  });

  return <DynamicIconComponent size={size} />;
};

export default IconComponent;
