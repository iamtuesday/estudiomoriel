export interface TYPE_FIELD_PROPS {
  name: RegExp
  phone: RegExp
  service: RegExp
  message: RegExp
  captcha:RegExp
}

// Expresiones regulares para validaciones de formulario

export const TYPE_FIELD: TYPE_FIELD_PROPS = {
  name: /[a-z]{3,30}[\s]{0,1}[a-z]{0,30}[\s]{0,1}[a-z]{0,30}/i,
  service: /[\w]+/i,
  phone: /^(1\s?)?(\d{3}|\(\d{3}\))[\s-]?\d{3}[\s-]?\d{4}$/,
  message: /[a-z0-9]/i,
  captcha:/[\w]+/i,
 
}

export interface InitialFormState {
  name: string
  phone: string
  service: string
  message: string
  captcha:string
}

export interface InitialFormErrors {
  name: string
  phone: string
  service: string
  captcha: string

}

// Estado inicial del formulario

export const initialFormState: InitialFormState = {
  name: '',
  phone: '',
  service: '',
  message: '',
  captcha:''
}

// Campos del formulario que no pueden estar vacios

export const initialFormErrors: InitialFormErrors = {
  name: '',
  phone: '',
  service: '',
  captcha:''
}
