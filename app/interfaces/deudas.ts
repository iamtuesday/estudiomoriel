import { ImgMobile } from "./home";
export interface Deudas {
  data: DeudasData;
  meta: DeudasMeta;
}

export interface DeudasData {
  id: number;
  title: string;
  slug: string;
  content: string;
  createdAt: string;
  updatedAt: string;
  publishedAt: string;
  videos: Video[];
  aboutme: Aboutme;
  blog: Blog[];
}

export interface Aboutme {
  id: number;
  title: string;
  content: string;
  subtitle: string;
  img: ImgMobile;
}

export interface Blog {
  id: number;
  title: string;
  subtitle: string;
  content: string;
  img: ImgMobile;
}

export interface Video {
  id: number;
  url: string;
  title: string;
  img: ImgMobile;
}

export interface DeudasMeta {}
