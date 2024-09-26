import Carousel from "react-material-ui-carousel";
import { Button, Paper, Box } from "@mui/material";
import Typography from "@mui/material/Typography";
import { get } from "lodash";
import { useNavigate } from "react-router-dom";
import ReactMarkdown from "react-markdown";
import { hexToRgb } from "/src/utils/common";

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
  const navigate = useNavigate();
  const gradientRGB = hexToRgb(background);
  return (
    <Paper
      id={id}      
      elevation={3}
      sx={{
        pt: "auto",
        pl: 4,
        pr: 4,
        pb: "auto",
        width: "100%",
        height: "50vh",
        borderRadius: 0,
        backgroundImage: `linear-gradient(to bottom, rgba(${gradientRGB.r}, ${
          gradientRGB.g
        }, ${gradientRGB.b}, 0.20), rgba(0, 0, 0, 0.60)), url('${get(
          image,
          "data.attributes.formats.large.url"
        )}')`,
        verticalAlign: "bottom",
        clipPath: "polygon(100% 0, 100% 70%, 75% 100%, 0 100%, 0 0)",
        overflow: "visible !important",
        backgroundSize: "cover",
        backgroundRepeat: "no-repeat",
        backgroundPosition: "center",
        backgroundColor: background,
        "&:hover": {
          backgroundColor: background,
          opacity: [0.6, 0.7, 0.8],
        },
      }}
    >
      <Box
        sx={{
          height: "35vh",
          display: "block",
          pt: 5,
          alignItems: "center",
          justifyContent: "center",
        }}
      >
        <Typography
          variant="h1"
          sx={{
            mb: 4,
            pt: 2,
            pl: 4,
            pr: 4,
            flexGrow: 1,
            display: "flex",
            justifyContent: "left",
            alignItems: "center",
            fontSize: { xs: "2.5rem", md: "3.5rem", lg: "4.0rem" },
            fontWeight: 900,
            letterSpacing: ".0rem",
            color: "inherit",
            textDecoration: "none",
            textTransform: "uppercase",
            textAlign: "left",
          }}
        >
          {title}
        </Typography>

        <Box
          sx={{
            mt: 4,
            pl: 4,
            pr: 4,
            maxWidth: { xs: "100%", sm: "90%", md: "80%", lg: "70%" },
            fontSize: { xs: "1rem", sm: "1.2rem", md: "1.4rem", lg: "1.8rem" },
            letterSpacing: ".0rem",
            color: "inherit",
            textDecoration: "none",
          }}
        >
          <ReactMarkdown>{description}</ReactMarkdown>
        </Box>
      </Box>
      <Box
        sx={{
          height: "15vh",
          textAlign: "center",
          justifyContent: "center",
          alignItems: "center",
          display: "flex",
        }}
      >
        {label && (
          <Button
            sx={{
              display: "inline-block",
              backgroundColor: background,
              borderRadius: 2,
              color: color,
              display: "inline",
            }}
            onClick={() => {
              navigate(url);
            }}
          >
            {label}
          </Button>
        )}
      </Box>
    </Paper>
  );
}

export default function Hero({ slides }) {
  return (
    <Box
      sx={{
        display: "flex",
        flexWrap: "wrap",
        "& > :not(style)": {
          mb: 5,
          width: "100%",
          minHeight: 256,
        },
      }}
    >
      {slides.length > 0 && (
        <Carousel
          navButtonsAlwaysVisible
          autoPlay
          animation="slide"
          duration={800}
          fullHeightHover
          swipe
        >
          {slides.map((banner, i) => (
            <Item key={i} {...banner} />
          ))}
        </Carousel>
      )}
    </Box>
  );
}
