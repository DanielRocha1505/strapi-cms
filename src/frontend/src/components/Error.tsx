import { useRouteError } from "react-router"
import { useNavigate } from "react-router-dom"
import Typography from "@mui/material/Typography"
import ErrorOutlineIcon from "@mui/icons-material/ErrorOutline"
import Paper from "@mui/material/Paper"
import Button from "@mui/material/Button"
import { styled } from "@mui/material/styles"
import { Box } from "@mui/material"
interface errorInterface {  
  message?: String 
  back?: String
}
type Error = {
  message: string
}
const DemoPaper = styled(Paper)(({ theme }) => ({
  width: "80%",
  minHeight: 200,
  padding: theme.spacing(5),
  ...theme.typography.body2,
  textAlign: "center"
}))
export default function Error({message,back}:errorInterface) {
  const error = useRouteError()
  const navigate = useNavigate()
  const handleClick = () => {
    if(back) {
      navigate(back)
    } else {
      window.history.back()
    }    
  }
  return (
    <Box
      sx={{
        pt: 2,
        pl: 3,
        pr: 3,
        pb: 5,
        width: "100%",
        minHeight: 400,
        backgroundColor: "#121212",
        display: "flex",
        flexDirection: "column",
        alignItems: "center",
        justifyContent: "center"
      }}>
      <DemoPaper variant="outlined">
        <Typography variant="h4">
          <ErrorOutlineIcon sx={{ fontSize: "inherit" }} />{" "}
          {message || (error as Error)?.message}
        </Typography>
        <Button
          variant="outlined"
          color="error"
          sx={{ mt: 5 }}
          onClick={handleClick}>
          Back
        </Button>
      </DemoPaper>
    </Box>
  )
}
