const blocksFragments = `
# Blocks components
fragment fragmentComponentBlocksHero on ComponentBlocksHero {
  slides {
    ...fragmentComponentElementsCard
  }  
}

fragment fragmentComponentBlocksCarousel on ComponentBlocksCarousel {
  id
  title
  cards {
    ...fragmentComponentElementsCard
  }
  buttons {
    ...fragmentComponentElementsButton
  }
}

fragment fragmentComponentBlocksLatestNews on ComponentBlocksLatestNews {
  id
  title
  articles {
    data {
      attributes {
        title
        slug
        description
        content
        image {
          ...fragmentImage
        }
        categories {
          data {
            attributes {
              name
            }
          }          
        }
        author {
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
        createdAt
        updatedAt
        publishedAt
      }
    }
  }
  buttons {
    ...fragmentComponentElementsButton
  }
}

fragment fragmentComponentBlocksFaq on ComponentBlocksFaq {
  questions {
    title
    description
  }
}

fragment fragmentComponentBlocksMediaCard on ComponentBlocksMediaCard {
  card {
    id
    title
    description
    image {
      ...fragmentImage
    }
    label
    url
    background
    color
  }
  mediaPosition
}
`

export default blocksFragments