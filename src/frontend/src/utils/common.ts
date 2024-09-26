export function hexToRgb(hex: string) {
    var result = /^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.exec(hex);
    return result
      ? {
          r: parseInt(result[1], 16),
          g: parseInt(result[2], 16),
          b: parseInt(result[3], 16),
        }
      : {
          r: 0,
          g: 0,
          b: 0,
        };
  }

  export function nestMenuItems(menuItems:any) {
    // Create a map to store items by ID
    const itemMap = new Map();
    menuItems.forEach((item:any) => itemMap.set(item.id, item));
  
    // Function to recursively build the nested structure
    function buildTree(itemId: any) {
      const item = itemMap.get(itemId);
  
      if (!item) return null;
  
      let childrenIds:any = [];
      menuItems
        .filter((item:any) => item?.attributes?.parent?.data?.id == itemId)
        .map((child:any) => {
          childrenIds.push(child.id);
        });
      // Remove unnecessary nesting within attributes
      const {
        attributes: { parent, ...restAttributes },
        ...restItem
      } = item;
  
      // Recursively build children
      const children = childrenIds
        .map((childId: any) => buildTree(childId))
        .filter(Boolean);
  
      return {
        ...restItem,
        ...restAttributes,
        children,
      };
    }
  
    // Find root items (items with no parents)
    const rootItems = menuItems.filter((item: any) => !item.attributes.parent.data);
  
    // Build the nested structure for each root item
    return rootItems.map((rootItem: any) => buildTree(rootItem.id));
  }
  