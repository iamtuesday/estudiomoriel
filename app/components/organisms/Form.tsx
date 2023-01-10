import { FC, useEffect, useRef } from 'react'
import { useNavbarContext } from '../../context/navbar.context'
import { useForm } from '../../hooks/useForm'
import ReCAPTCHA, { ReCAPTCHA as ReCAPTCHAType } from 'react-google-recaptcha'

import { Form as FormType, MessagesForm, Service } from '../../interfaces'
import { Loader } from '../atoms'
interface FormProps {
  form: FormType

  services: Service[]
  messages: MessagesForm
  // services: string
}

export const Form: FC<FormProps> = ({ form, services, messages }) => {
  const { name, service, phone, submit, message } = form
  // const { formServiceValue } = useNavbarContext()
  const captchaRef = useRef<ReCAPTCHAType>(null)
  const { serviceSelected} = useNavbarContext()
  // const router = useRouter()
  // console.log(messages)

  const {
    failure,
    sending,
    errors,
    formState,
    responseMessage,
    validateInput,
    validateSelect,
    handleInput,
    handleSubmit,
    setFormState,
  } = useForm(messages,'/ezforms/submit',captchaRef)

  useEffect(() => {
    setFormState((prevState) => {
      return { ...prevState, service: serviceSelected }
    })
  }, [setFormState, serviceSelected])
  const onChangeRecaptcha = () => {
    if (captchaRef.current?.getValue()) {
      setFormState({
        ...formState,
        captcha: captchaRef.current?.getValue() as string,
      })
      // console.log(captchaRef)
    }
  }
  const captchaKey = process.env.NEXT_PUBLIC_RECAPTCHA_SECRET_KEY as string
  // console.log(formState.name)
  return (
    <div className="Form " data-section="#form">
      <div>
        <form className="Form-form" onSubmit={handleSubmit}>
          {/* Names */}
          <div className="Form-field name">
            <input
              value={formState.name}
              placeholder={name.placeholder}
              onInput={validateInput}
              name={name.name}
              id={name.name}
              type="text"
            />
            {errors.name && <p className="Form-error">{errors.name}</p>}
          </div>

          {/* Phone Number */}
          <div className="Form-field phone">
            <input
              value={formState.phone}
              onInput={validateInput}
              placeholder={phone.placeholder}
              name={phone.name}
              id={phone.name}
              type="text"
            />
            {errors.phone && <p className="Form-error">{errors.phone}</p>}
          </div>

          {/* Select Service */}
          <div className="Form-field relative service">
            <i className="icon-next"></i>
            <select
              value={formState.service}
              name={service.name}
              onInput={validateSelect}
              id={service.name}
            >
              <option value="" disabled>
                {service.placeholder}
              </option>
              {services.map((item, index) => (
                <option key={index}>{item.title}</option>
              ))}
            </select>
            {errors.service && <p className="Form-error">{errors.service}</p>}
          </div>

          {/* Message */}
          <div className="Form-field message" >
            <textarea
              placeholder={message.placeholder}
              value={formState.message}
              name={message.name}
              onInput={handleInput}
              id={message.name}
            ></textarea>
          </div>
          {/* captcha */}
          <div className='Form-captcha captcha'>
            <ReCAPTCHA
              sitekey={captchaKey}
              onChange={onChangeRecaptcha}
              ref={captchaRef}
            />
            {errors.captcha && <p className="Form-error">Please accept the captcha.</p>}
          </div>
          
          {/* Send */}
          <div className="Form-send send">
            <button disabled={sending} className="Form-btn">
              {submit.label}
            </button>
            {sending && <Loader />}
          </div>

          {/* Response Message */}

          {responseMessage && (
            <p className={`Form-response ${failure && 'failure'}`}>
              {responseMessage}
            </p>
          )}
        </form>
      </div>
    </div>
  )
}
