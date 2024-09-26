import { Helmet } from "react-helmet-async";
import { get } from "lodash";
import { useRouteLoaderData } from "react-router-dom";

export default function Seo({ seo }) {
  const { global } = useRouteLoaderData("global");
  const favicon = get(
    global,
    "data.attributes.favicon.data.attributes.formats.thumbnail.url"
  );
  const metaTitle = get(seo, "metaTitle") || get(global, "seo.metaTitle");
  const metaDescription =
    get(seo, "metaDescription") || get(global, "seo.metaDescription");
  const metaImage =
    get(seo, "metaImage.data.attributes.formats.medium.url") ||
    get(global, "seo.metaImage.data.attributes.formats.medium.url");
  const metaSocial = get(seo, "metaSocial") || get(global, "seo.metaSocial");
  const keywords = get(seo, "keywords") || get(global, "seo.keywords");
  const metaRobots = get(seo, "metaRobots") || get(global, "seo.metaRobots");
  const structuredData =
    get(seo, "structuredData") || get(global, "seo.structuredData");
  const metaViewport =
    get(seo, "metaViewport") || get(global, "seo.metaViewport");
  const canonicalURL =
    get(seo, "canonicalURL") || get(global, "seo.canonicalURL");
  return (
    (global?.seo || seo) && (
      <Helmet>
        <title>
          {metaTitle} | {global.siteName}
        </title>
        <meta description={metaDescription} />
        {favicon && <link rel="icon" type="image/svg+xml" href={favicon} />}
        {structuredData && (
          <script type="application/ld+json">{structuredData}</script>
        )}
        {metaRobots && <meta name="robots" content={metaRobots} />}
        {keywords && <meta name="keywords" content={keywords} />}
        {metaViewport && <meta name="viewport" content={metaViewport} />}
        {metaSocial &&
          metaSocial.length > 0 &&
          metaSocial.map((meta) => {
            if (meta.socialNetwork == "facebooc") {
              return (
                <>
                  <meta property="og:type" content="website" />
                  <meta property="og:title" content={meta.title} />
                  <meta property="og:description" content={meta.description} />
                  <meta property="og:url" content={window.location.href} />
                  {meta.image ||
                    (metaImage && (
                      <meta
                        property="og:image"
                        content={`/${window.location.protocol}/${
                          window.location.host
                        }${
                          get(
                            meta,
                            "image.data.attributes.formats.medium.url"
                          ) || metaImage
                        }`}
                      />
                    ))}
                </>
              );
            } else {
              return (
                <>
                  <meta name="twitter:card" content="summary_large_image" />
                  <meta name="twitter:title" content={meta.title} />
                  <meta name="twitter:description" content={meta.description} />
                  {meta.image ||
                    (metaImage && (
                      <meta
                        property="twitter:image"
                        content={`/${window.location.protocol}/${
                          window.location.host
                        }${
                          get(
                            meta,
                            "image.data.attributes.formats.medium.url"
                          ) || metaImage
                        }`}
                      />
                    ))}
                </>
              );
            }
          })}
        {canonicalURL && <link rel="canonical" href={canonicalURL} />}
      </Helmet>
    )
  );
}
