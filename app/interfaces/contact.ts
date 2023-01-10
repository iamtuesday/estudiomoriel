export interface ContactPage {
  data: ContactData
  meta: Meta
}

export interface ContactData {
  title: string
  subtitle: string
  form: Form
  messages: MessagesForm
}
export interface Image {
  url: string
}
export interface ImageMobile {
  url: string
}
export interface Form {
  id: number
  name: InputForm
  phone: InputForm
  service: InputForm
  message: InputForm
  submit: Submit
}

export interface Submit {
  url: string
  label: string
}

export interface MessagesForm {
  spam: string
  invalid_tel: string
  invalid_url: string
  invalid_name: string
  accept_terms: string
  invalid_date: string
  mail_sent_ng: string
  mail_sent_ok: string
  date_too_late: string
  invalid_email: string
  upload_failed: string
  date_too_early: string
  invalid_number: string
  invalid_required: string
  invalid_too_long: string
  number_too_large: string
  number_too_small: string
  validation_error: string
  invalid_too_short: string
  upload_file_too_large: string
  quiz_answer_not_correct: string
  upload_failed_php_error: string
  upload_file_type_invalid: string
  message_confimation:string
}

export interface InputForm {
  id: number
  label: string
  placeholder: string
  name: string
}

export interface Meta {}

// export interface ContactPage {
//   data: ContactData;
//   meta: ContactMeta;
// }

// export interface ContactData {
//   id:          number;
//   title:       string;
//   subtitle:    string;
//   createdAt:   Date;
//   updatedAt:   Date;
//   publishedAt: Date;
//   contact:     ContactClass;
// }

// export interface ContactClass {
//   id:   number;
//   form: Form;
// }

// export interface Form {
//   name:     Message;
//   phone:    Message;
//   submit:   Submit;
//   message:  Message;
//   service:  Message;
//   messages: Messages;
// }

// export interface Message {
//   name:        string;
//   label:       string;
//   placeholder: string;
// }

// export interface Messages {
//   spam:                     string;
//   invalid_tel:              string;
//   invalid_url:              string;
//   accept_terms:             string;
//   invalid_date:             string;
//   invalid_name:             string;
//   mail_sent_ng:             string;
//   mail_sent_ok:             string;
//   date_too_late:            string;
//   invalid_email:            string;
//   upload_failed:            string;
//   date_too_early:           string;
//   invalid_number:           string;
//   invalid_required:         string;
//   invalid_too_long:         string;
//   number_too_large:         string;
//   number_too_small:         string;
//   validation_error:         string;
//   invalid_too_short:        string;
//   upload_file_too_large:    string;
//   quiz_answer_not_correct:  string;
//   upload_failed_php_error:  string;
//   upload_file_type_invalid: string;
// }

// export interface Submit {
//   url:   string;
//   label: string;
// }

// export interface ContactMeta {
// }
