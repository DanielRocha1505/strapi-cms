import moment from "moment";
import Avatar from "@mui/material/Avatar";
import Card from "@mui/material/Card";
import CardActions from "@mui/material/CardActions";
import CardContent from "@mui/material/CardContent";
import CardMedia from "@mui/material/CardMedia";
import Typography from "@mui/material/Typography";
import { Stack } from "@mui/material";
import { useNavigate } from "react-router-dom";
import { get } from "lodash";
import ReadMoreIcon from "@mui/icons-material/ReadMore";
import IconButton from "@mui/material/IconButton";

const ArticleCard = ({
  title,
  slug,
  description,
  content,
  image,
  categories,
  author,
  createdAt,
  updatedAt,
  publishedAt,
}) => {
  const navigate = useNavigate();
  const authorName = get(author, "data.attributes.name");
  const authorPicture = get(
    author,
    "data.attributes.picture.data.attributes.formats.small.url"
  );
  return (
    <Card sx={{ maxWidth: "30%", minWidth: 200 }}>
      <CardMedia
        sx={{ height: 140 }}
        image={get(image, "data.attributes.formats.medium.url")}
        title={title}
      />
      <CardContent>
        <Typography gutterBottom variant="body2" component="div">
          {moment(updatedAt).format("DD/MM/YYYY [@] H:m")}
        </Typography>
        <Typography gutterBottom variant="h5" component="div">
          {title}
        </Typography>
        <Typography variant="body2" sx={{ color: "text.secondary", mb: 2 }}>
          {description}
        </Typography>
      </CardContent>
      <CardActions
        sx={{ justifyContent: "space-between", alignItems: "flex-end" }}
      >
        <Stack
          direction={"row"}
          sx={{ mt: 2 }}
          spacing={2}
          alignContent={"center"}
          alignItems={"center"}
        >
          <Avatar alt={authorName} src={authorPicture} />
          <Typography variant="body2" sx={{ color: "text.secondary" }}>
            {authorName}
          </Typography>
        </Stack>
        <IconButton
          aria-label="delete"
          size="small"
          onClick={() => {
            navigate(`/blog/articles/${slug}`);
          }}
        >
          <ReadMoreIcon />
        </IconButton>
      </CardActions>
    </Card>
  );
};

export default ArticleCard;
