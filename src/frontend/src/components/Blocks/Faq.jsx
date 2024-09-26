import * as React from "react";
import Accordion from "@mui/material/Accordion";
import AccordionSummary from "@mui/material/AccordionSummary";
import AccordionDetails from "@mui/material/AccordionDetails";
import Typography from "@mui/material/Typography";
import ArrowDownwardIcon from "@mui/icons-material/ArrowDownward";
import { Container } from "@mui/material";

export default function Faq({ questions }) {
  return (
    <Container sx={{mb: 4}}>
      {questions.map((question, i) => {
        return (
          <Accordion key={i}>
            <AccordionSummary
              expandIcon={<ArrowDownwardIcon />}
              aria-controls="panel1-content"
              id="panel1-header"
            >
              <Typography>{question.title}</Typography>
            </AccordionSummary>
            <AccordionDetails>
              <Typography>{question.description}</Typography>
            </AccordionDetails>
          </Accordion>
        );
      })}
    </Container>
  );
}
