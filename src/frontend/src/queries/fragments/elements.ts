export const elementsLinkFragment = `
fragment fragmentComponentElementsLink on ComponentElementsLink {
  id
  label
  url
  icon
}
`

export const elementsCardFragment = `
fragment fragmentComponentElementsCard on ComponentElementsCard {
  id
  title
  description
  image {
    ...fragmentImage
  }
  background
  color
  label
  url
}
`
export const elementsButtonFragment = `
fragment fragmentComponentElementsButton on ComponentElementsButton {
  type: __typename
  id
  label
  url
  icon
  color
}
`
const elementsFragments = `
# Element components
${elementsLinkFragment}
${elementsCardFragment}
${elementsButtonFragment}
`

export default elementsFragments