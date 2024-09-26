const settingsFragments = `
# Settings components
fragment fragmentSeo on ComponentSharedSeo {
  metaTitle
  metaDescription
  metaImage {
    ...fragmentImage
  }
  metaSocial {
    socialNetwork 
    title
    description
    image {
      ...fragmentImage
    }
  }
  keywords
  metaRobots  
  structuredData
  metaViewport
  canonicalURL
}
`
export default settingsFragments