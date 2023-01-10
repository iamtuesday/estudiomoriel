
export interface TYPE_FIELD_PROPS {
  name: RegExp
  email: RegExp
  any: RegExp
  phone: RegExp
}

// Expresiones regulares para validaciones de formulario

export const TYPE_FIELD: TYPE_FIELD_PROPS = {
  name: /[a-z]{3,30}[\s]{0,1}[a-z]{0,30}[\s]{0,1}[a-z]{0,30}/i,
  any: /[\w]+/i,
  phone: /^(1\s?)?(\d{3}|\(\d{3}\))[\s-]?\d{3}[\s-]?\d{4}$/,
  email: /[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?/,
}



export interface InitialFormState {
  name: string,
  email: string,
  phone: string,
  service: string,
  message: string,
  token: string,

}

export interface InitialFormErrors {
  name: string,
  email: string,
  phone: string,
  token: string,
  service: string,
}

// Estado inicial del formulario

export const initialFormState: InitialFormState = {
  name: '',
  email: '',
  phone: '',
  message: '',
  token: '',
  service: ''

}

// Campos del formulario que no pueden estar vacios

export const initialFormErrors: InitialFormErrors = {
  name: '',
  email: '',
  phone: '',
  token: '',
  service: ''
}