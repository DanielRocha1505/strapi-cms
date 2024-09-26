import type { Schema, Attribute } from '@strapi/strapi';

export interface SharedSeo extends Schema.Component {
  collectionName: 'components_shared_seos';
  info: {
    displayName: 'seo';
    icon: 'search';
  };
  attributes: {
    metaTitle: Attribute.String &
      Attribute.Required &
      Attribute.SetMinMaxLength<{
        maxLength: 60;
      }>;
    metaDescription: Attribute.String &
      Attribute.Required &
      Attribute.SetMinMaxLength<{
        minLength: 50;
        maxLength: 160;
      }>;
    metaImage: Attribute.Media<'images' | 'files' | 'videos'>;
    metaSocial: Attribute.Component<'shared.meta-social', true>;
    keywords: Attribute.Text;
    metaRobots: Attribute.String;
    structuredData: Attribute.JSON;
    metaViewport: Attribute.String;
    canonicalURL: Attribute.String;
  };
}

export interface SharedMetaSocial extends Schema.Component {
  collectionName: 'components_shared_meta_socials';
  info: {
    displayName: 'metaSocial';
    icon: 'project-diagram';
  };
  attributes: {
    socialNetwork: Attribute.Enumeration<['Facebook', 'Twitter']> &
      Attribute.Required;
    title: Attribute.String &
      Attribute.Required &
      Attribute.SetMinMaxLength<{
        maxLength: 60;
      }>;
    description: Attribute.String &
      Attribute.Required &
      Attribute.SetMinMaxLength<{
        maxLength: 65;
      }>;
    image: Attribute.Media<'images' | 'files' | 'videos'>;
  };
}

export interface BlocksMediaCard extends Schema.Component {
  collectionName: 'components_blocks_media_cards';
  info: {
    displayName: 'Media Card';
    description: '';
  };
  attributes: {
    card: Attribute.Component<'elements.card'>;
    mediaPosition: Attribute.Enumeration<['left', 'right']>;
  };
}

export interface BlocksLatestNews extends Schema.Component {
  collectionName: 'components_sections_latest_news';
  info: {
    displayName: 'Latest News';
    icon: 'bulletList';
    description: '';
  };
  attributes: {
    title: Attribute.String & Attribute.Required;
    articles: Attribute.Relation<
      'blocks.latest-news',
      'oneToMany',
      'api::article.article'
    >;
    buttons: Attribute.Component<'elements.button', true>;
  };
}

export interface BlocksHero extends Schema.Component {
  collectionName: 'components_blocks_heroes';
  info: {
    displayName: 'Hero';
    description: '';
  };
  attributes: {
    slides: Attribute.Component<'elements.card', true>;
  };
}

export interface BlocksFaq extends Schema.Component {
  collectionName: 'components_blocks_faqs';
  info: {
    displayName: 'Faq';
  };
  attributes: {
    questions: Attribute.Component<'elements.title-and-description', true>;
  };
}

export interface BlocksCarousel extends Schema.Component {
  collectionName: 'components_sections_carousels';
  info: {
    displayName: 'Carousel';
    icon: 'database';
    description: '';
  };
  attributes: {
    title: Attribute.String & Attribute.Required;
    cards: Attribute.Component<'elements.card', true>;
    buttons: Attribute.Component<'elements.button', true>;
  };
}

export interface ElementsTitleAndDescription extends Schema.Component {
  collectionName: 'components_elements_title_and_descriptions';
  info: {
    displayName: 'Title and Description';
  };
  attributes: {
    title: Attribute.String;
    description: Attribute.RichText;
  };
}

export interface ElementsLink extends Schema.Component {
  collectionName: 'components_elements_links';
  info: {
    displayName: 'Link';
  };
  attributes: {
    label: Attribute.String & Attribute.Required;
    url: Attribute.String;
    icon: Attribute.String & Attribute.CustomField<'plugin::react-icons.icon'>;
  };
}

export interface ElementsCard extends Schema.Component {
  collectionName: 'components_elements_cards';
  info: {
    displayName: 'Card';
    description: '';
  };
  attributes: {
    title: Attribute.String & Attribute.Required;
    description: Attribute.RichText;
    image: Attribute.Media<'images' | 'files' | 'videos' | 'audios'>;
    label: Attribute.String;
    url: Attribute.String;
    background: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    color: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
  };
}

export interface ElementsButton extends Schema.Component {
  collectionName: 'components_elements_buttons';
  info: {
    displayName: 'Button';
  };
  attributes: {
    label: Attribute.String & Attribute.Required;
    url: Attribute.String & Attribute.Required;
    icon: Attribute.String & Attribute.CustomField<'plugin::react-icons.icon'>;
    color: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
  };
}

declare module '@strapi/types' {
  export module Shared {
    export interface Components {
      'shared.seo': SharedSeo;
      'shared.meta-social': SharedMetaSocial;
      'blocks.media-card': BlocksMediaCard;
      'blocks.latest-news': BlocksLatestNews;
      'blocks.hero': BlocksHero;
      'blocks.faq': BlocksFaq;
      'blocks.carousel': BlocksCarousel;
      'elements.title-and-description': ElementsTitleAndDescription;
      'elements.link': ElementsLink;
      'elements.card': ElementsCard;
      'elements.button': ElementsButton;
    }
  }
}
