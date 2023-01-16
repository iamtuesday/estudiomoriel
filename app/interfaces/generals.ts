export interface Polylang {
  data: PolylangData;
  meta: PolylangMeta;
}

export interface PolylangData {
  lbl_see_services: string;
  lbl_contact_us: string;
  tag_manager: string;
  pixel_facebook: string;
  facebook_id: string;
  email: string;
  address: string;
  url_map: string;
  whatsapp: string;
  whatsapp_url: string;
  logo: Logo;
  social_networks: Social[];
  menu: Menu[];
}
export interface Social {
  type: string;
  url: string;
}
export interface Logo {
  name: string;
  width: number;
  height: number;
  url: string;
}

export interface Menu {
  id: number;
  url: string;
  label: string;
}

export interface PolylangMeta {}
