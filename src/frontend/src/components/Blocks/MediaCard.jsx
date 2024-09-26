import { Button, Paper, Box, Stack, Container } from "@mui/material";
import Typography from "@mui/material/Typography";
import { get } from "lodash";
import { useNavigate } from "react-router-dom";
import ReactMarkdown from "react-markdown";
import { hexToRgb } from "/src/utils/common";

export default function MediaCard({ card, mediaPosition }) {
  const { id, title, description, image, background, color, label, url } = card;
  const navigate = useNavigate();
  const gradientRGB = hexToRgb(background);
  const direction = mediaPosition == "left" ? "row" : "row-reverse";
  return (
    <Container id={id} sx={{ mb: 4 }}>
      <Stack direction={direction}>
        <Paper
          elevation={3}
          sx={{
            pt: "auto",
            pl: 4,
            pr: 4,
            pb: "auto",
            width: { sm: "50%", xs: "100%" },
            height: "350px",
            borderRadius: 3,
            backgroundImage: `linear-gradient(to bottom, rgba(${
              gradientRGB.r
            }, ${gradientRGB.g}, ${
              gradientRGB.b
            }, 0.20), rgba(0, 0, 0, 0.60)), url('${get(
              image,
              "data.attributes.formats.large.url"
            )}')`,
            clipPath: "polygon(0 0, 100% 0, 74% 100%, 0 100%)",
            verticalAlign: "bottom",
            overflow: "visible !important",
            backgroundSize: "cover",
            backgroundRepeat: "no-repeat",
            backgroundPosition: "center",
            backgroundColor: background,
          }}
        ></Paper>
        <Stack
          sx={{ width: "50%" }}
          alignContent={"space-between"}
          direction={"column"}
        >
          <Typography
            variant="h4"
            sx={{
              m: 0,
              pt: 0,
              pb: 0,
              pl: 4,
              pr: 4,
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
              pl: 4,
              pr: 4,
              fontSize: {
                xs: "1rem",
                sm: "1.2rem",
                md: "1.4rem",
                lg: "1.8rem",
              },
              letterSpacing: ".0rem",
              color: "inherit",
              textDecoration: "none",
            }}
          >
            <ReactMarkdown>{description}</ReactMarkdown>
          </Box>
          <Box
            sx={{
              width: "100%",
              height: "15%",
              mb: 4,
              textAlign: "center",
              justifyContent: "center",
              alignItems: "flex-end",
              flexGrow: 1,
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
        </Stack>
      </Stack>
    </Container>
  );
}
