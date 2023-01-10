import { Img } from "./contact";


export interface Home {
  data: HomeData;
  meta: HomeMeta;
}

export interface HomeData {
  id: number;
  title: null;
  createdAt: Date;
  updatedAt: Date;
  publishedAt: Date;
  HomeBanner: Banner[];
  HomeService: HomeService;
  HomeAbout: HomeAbout;
  characteristic: HomeCharac[];
  HomeBlog: HomeBlog;
  banner_middle: BannerMid;
  seo: MetaSEO;
}

export interface BannerMid {
  id: number;
  bg: ImgMobile;
  bg_mob: ImgMobile;
  content: string;
}

export interface MetaSEO {
  id: number
  metaTitle: string
  metaDescription: string
  keywords?: string
  metaRobots?: string
  structuredData?: string
  metaViewport?: string
  canonicalURL?: string
  metaImage: ImgMobile
  metaSocial: MetaSocial[]
}
export interface MetaSocial {
  id: number
  socialNetwork: string
  title: string
  description: string
  image: ImgMobile
}
export interface HomeAbout {
  id: number;
  content: string;
  titles: Titles;
  img: ImgMobileElement;
  list: AboutList[];
}

export interface AboutList {
  id: number;
  title: string;
  icon: ImgMobileElement;
}
export interface ImgMobileElement {
  id: number;
  name: string;
  alternativeText: string;
  caption: string;
  width: number;
  height: number;
  formats: PurpleFormats;
  hash: string;
  ext: EXT;
  mime: MIME;
  size: number;
  url: string;
  previewUrl: null;
  provider: string;
  provider_metadata: null;
  createdAt: Date;
  updatedAt: Date;
}

export enum EXT {
  Jpg = ".jpg",
}

export interface PurpleFormats {
  thumbnail: Thumbnail;
}

export interface Thumbnail {
  ext: EXT;
  url: string;
  hash: string;
  mime: MIME;
  name: string;
  path: null;
  size: number;
  width: number;
  height: number;
}

export enum MIME {
  ImageJPEG = "image/jpeg",
}

export interface Titles {
  id: number;
  title: string;
  subtitle: string;
  content?: string;
}

export interface Banner {
  id: number;
  title: string;
  subtitle: string;
  bg: HomeBannerImg;
  bg_mob: ImgMobile;
}

export interface HomeBannerImg {
  id: number;
  name: string;
  alternativeText: string;
  caption: string;
  width: number;
  height: number;
  formats: FluffyFormats;
  hash: string;
  ext: EXT;
  mime: MIME;
  size: number;
  url: string;
  previewUrl: null;
  provider: string;
  provider_metadata: null;
  createdAt: Date;
  updatedAt: Date;
}

export interface FluffyFormats {
  large: Thumbnail;
  small: Thumbnail;
  medium: Thumbnail;
  thumbnail: Thumbnail;
}

export interface ImgMobile {
  id: number;
  name: string;
  alternativeText: string;
  caption: string;
  width: number;
  height: number;
  formats: TentacledFormats;
  hash: string;
  ext: EXT;
  mime: MIME;
  size: number;
  url: string;
  previewUrl: null;
  provider: string;
  provider_metadata: null;
  createdAt: Date;
  updatedAt: Date;
}

export interface TentacledFormats {
  small: Thumbnail;
  thumbnail: Thumbnail;
}

export interface HomeBlog {
  id: number;
  titles: Titles;
  cardArticle: Articles[];
}
export interface Articles {
  title: string;
  subtitle: string;
  content: string;
}

export interface HomeCharac {
  id: number;
  title: string;
  description: string;
  icon: Img

}

export interface CardChara {
  id: number;
  title: string;
}

export interface HomeService {
  id: number;
  titles: Titles;
  cardService: Service[];
}

export interface Service {
  title: string;
  content: string;
  img: ImgMobile;
  img_mobile: ImgMobile;
}

export interface HomeMeta {
}
