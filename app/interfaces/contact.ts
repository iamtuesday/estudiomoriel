export interface Contact {
  data: ContactData;
  meta: ContactMeta;
}

export interface ContactData {
  id:          number;
  title:       string;
  subtitle:    string;
  createdAt:   string;
  updatedAt:   string;
  publishedAt: string;
  img:         Img;
  name:        Email;
  phone:       Email;
  email:       Email;
  service:     Email;
  message:     Email;
  submit:      Submit;
  messages:    Messages;
}

export interface Email {
  id:          number;
  name:        string;
  placeholder: string;
  label:       string;
}

export interface Img {
  id:                number;
  name:              string;
  alternativeText:   null;
  caption:           null;
  width:             number;
  height:            number;
  formats:           Formats;
  hash:              string;
  ext:               string;
  mime:              string;
  size:              number;
  url:               string;
  previewUrl:        null;
  provider:          string;
  provider_metadata: null;
  createdAt:         Date;
  updatedAt:         Date;
}

export interface Formats {
  small:     Small;
  thumbnail: Small;
}

export interface Small {
  ext:    string;
  url:    string;
  hash:   string;
  mime:   string;
  name:   string;
  path:   null;
  size:   number;
  width:  number;
  height: number;
}

export interface Messages {
  id:                       number;
  mail_sent_ok:             string;
  mail_sent_ng:             string;
  validation_error:         string;
  spam:                     string;
  accept_terms:             string;
  invalid_required:         string;
  invalid_too_long:         string;
  invalid_too_short:        string;
  upload_failed:            string;
  upload_file_type_invalid: null;
  upload_file_too_large:    string;
  upload_failed_php_error:  string;
  invalid_date:             string;
  date_too_early:           string;
  date_too_late:            string;
  invalid_number:           string;
  number_too_small:         string;
  number_too_large:         string;
  quiz_answer_not_correct:  string;
  invalid_email:            string;
  invalid_url:              string;
  invalid_tel:              string;
}

export interface Submit {
  id:    number;
  url:   string;
  label: string;
}

export interface ContactMeta {
}