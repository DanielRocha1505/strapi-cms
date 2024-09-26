export const fragmentHomePageContentDynamicZone = `
fragment fragmentHomePageContentDynamicZone on HomePageContentDynamicZone {
  type: __typename
  ...fragmentComponentBlocksHero
  ...fragmentComponentBlocksCarousel
  ...fragmentComponentBlocksLatestNews
  ...fragmentComponentBlocksFaq
  ...fragmentComponentBlocksMediaCard
}
`

export const fragmentPageBeforeDynamicZone = `
fragment fragmentPageBeforeDynamicZone on PageBeforeDynamicZone {
  type: __typename
  ...fragmentComponentBlocksHero  
}
`

export const fragmentPageAfterDynamicZone = `
fragment fragmentPageAfterDynamicZone on PageAfterDynamicZone {
  type: __typename
  ...fragmentComponentBlocksCarousel
  ...fragmentComponentBlocksLatestNews
  ...fragmentComponentBlocksFaq
  ...fragmentComponentBlocksMediaCard
}
`
export const fragmentSectionContentDynamicZone = `
fragment fragmentSectionContentDynamicZone on SectionContentDynamicZone {
  ...fragmentComponentBlocksHero
  ...fragmentComponentBlocksCarousel
  ...fragmentComponentBlocksLatestNews
  ...fragmentComponentBlocksFaq
  ...fragmentComponentBlocksMediaCard
}
`