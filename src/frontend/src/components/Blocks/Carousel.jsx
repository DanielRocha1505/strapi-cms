import Typography from "@mui/material/Typography";
import Box from "@mui/material/Box";
import Card from "@mui/material/Card";
import CardContent from "@mui/material/CardContent";
import CardMedia from "@mui/material/CardMedia";
import MultiCarousel from "react-multi-carousel";
import "react-multi-carousel/lib/styles.css";
import { get } from "lodash";
import { Container } from "@mui/material";

function Item({
  id,
  title,
  description,
  image,
  background,
  color,
  label,
  url,
}) {
  return (
    <Card variant="outlined" sx={{ minHeight: "200px", mr: 2 }}>
      <CardMedia
        sx={{ height: 140 }}
        image={get(image, "data.attributes.formats.large.url")}
      />
      <CardContent>
        <Typography
          variant="h3"
          sx={{ fontSize: 14, textTransform: "capitalize" }}
          color="text.secondary"
          gutterBottom
        >
          {title}
        </Typography>
        <Typography variant="body2">{description}</Typography>
      </CardContent>
    </Card>
  );
}

export default function Carousel({ title, cards, buttons }) {
  return (
    <Container
      sx={{        
        mb: 4,
      }}
    >
      <Typography variant="h4" sx={{ mb: 3 }}>
        {title}
      </Typography>
      <MultiCarousel
        additionalTransfrom={0}
        arrows
        autoPlaySpeed={3000}
        centerMode={false}
        className=""
        containerClass="container-with-dots"
        dotListClass=""
        draggable
        focusOnSelect={false}
        infinite
        itemClass=""
        keyBoardControl
        minimumTouchDrag={80}
        pauseOnHover
        renderArrowsWhenDisabled={false}
        renderButtonGroupOutside={false}
        renderDotsOutside={false}
        responsive={{
          desktop: {
            breakpoint: {
              max: 3000,
              min: 1024,
            },
            items: 4,
            partialVisibilityGutter: 40,
          },
          mobile: {
            breakpoint: {
              max: 464,
              min: 0,
            },
            items: 2,
            partialVisibilityGutter: 30,
          },
          tablet: {
            breakpoint: {
              max: 1024,
              min: 464,
            },
            items: 3,
            partialVisibilityGutter: 30,
          },
        }}
        rewind={false}
        rewindWithAnimation={false}
        rtl={false}
        shouldResetAutoplay
        showDots={false}
        sliderClass=""
        slidesToSlide={1}
        swipeable
      >
        {cards.map((card, i) => (
          <Item key={i} {...card} />
        ))}
      </MultiCarousel>
    </Container>
  );
}
