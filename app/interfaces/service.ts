
export interface Service {
  id: string
  title: string
  slug: string
  content: string
  date: string
  picture: boolean
  icon: string
  img:  ServiceImage
  img_mobile: ServiceImage
}

export interface ServiceImage {
  id:                number;
  name:              string;
  alternativeText:   string;
  caption:           string;
  width:             number;
  height:            number;
  // formats:           ImgMobileFormats;
  hash:              string;
  // ext:               EXT;
  // mime:              MIME;
  size:              number;
  url:               string;
  previewUrl:        null;
  provider:          string;
  provider_metadata: null;
  createdAt:         Date;
  updatedAt:         Date;
}