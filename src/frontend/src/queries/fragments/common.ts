const commonFragments = `# Common system components
fragment fragmentImage on UploadFileEntityResponse {
  data {
    attributes {
      name
      alternativeText
      url
      width
      height
      caption
      formats
    }
  }
}`

export default commonFragments