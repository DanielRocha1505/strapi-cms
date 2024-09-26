export const fragmentAuthor = `
fragment fragmentAuthor on WriterEntityResponse {
  data {
    attributes {
      name
      email
      picture {
        ...fragmentImage
      }
    }
  }
}
`