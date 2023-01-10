import { FC, useEffect, useRef, useState } from 'react'
import { useForm } from '../../hooks/useForm'
import { Email, Submit, Messages, Service } from "../../interfaces";
import { Loader } from '../atoms'
import ReCAPTCHA from "react-google-recaptcha";
import { useNavbarContext } from '../../context/navbar.context';
import { convertToSlug } from '../../lib/utils';

interface FormProps {
    name: Email,
    phone: Email,
    email: Email,
    message: Email,
    submit: Submit,
    service: Email,
    messages: Messages,
    services: Service[]
}


export const Form: FC<FormProps> = ({ name, phone, email, message, submit, messages, service, services }) => {
    const { formServiceValue } = useNavbarContext()
    const {
        failure,
        sending,
        errors,
        formState,
        responseMessage,
        validateInput,
        handleInput,
        handleSubmit,
        recaptchaRef,
        setFormState,
        validateSelect
    } = useForm(messages, submit.url);

    const onReCAPTCHAChange = () => {
        let token = recaptchaRef?.current?.getValue();
        if (token) {
            setFormState({ ...formState, token: recaptchaRef.current?.getValue() as string })
        }
    }

    useEffect(() => {
        setFormState((prevState) => {
            return { ...prevState, service: formServiceValue }
        })
    }, [setFormState, formServiceValue])

    return (
        <form className="Form" onSubmit={handleSubmit}>
            {/* Names */}
            <div className="Text-Field">
                <label htmlFor={name.name}>{name.label}</label>
                <input value={formState.name}
                    onInput={validateInput}
                    name={name.name}
                    id={name.name}
                    type="text"
                    className="Text-Input"
                />
                {errors.name && <p className="Form-Error">{errors.name}</p>}
            </div>


            {/* Phone Number */}
            <div className="Text-Field">
                <label htmlFor={phone.name}>{phone.label}</label>
                <input value={formState.phone}
                    onInput={validateInput}
                    name={phone.name}
                    id={phone.name}
                    type="text"
                    className="Text-Input"
                />
                {errors.phone && <p className="Form-Error">{errors.phone}</p>}
            </div>

            {/* Email */}
            <div className="Text-Field">
                <label htmlFor={email.name}>{email.label}</label>
                <input value={formState.email}
                    onInput={validateInput}
                    name={email?.name}
                    id={email?.name}
                    type="email"
                    className="Text-Input"
                />
                {errors.email && <p className="Form-Error">{errors.email}</p>}
            </div>


            {/* Select Service */}
            <div className="relative Text-field select">
                <label htmlFor={service.name}>{service.label}</label>
                <select value={formState.service} name={service?.name} onInput={validateSelect} id={service?.name}>
                    <option value="" disabled></option>
                    {services.map(({ title }, i) => (
                        <option key={i} value={convertToSlug(title)}>
                            {title}
                        </option>
                    ))}
                </select>
                <i className="icon-arrow-select"></i>
                {errors.service && <p className="Form-Error">{errors.service}</p>}
            </div>


            {/* Message */}
            <div className="Text-Field md:col-span-2">
                <label htmlFor={message.name}>{message.label}</label>
                <textarea
                    value={formState.message}
                    name={message.name}
                    onInput={handleInput}
                    id={message.name}
                    className="Text-Textarea"
                ></textarea>
            </div>

            <div className="recaptcha md:col-span-2">
                <ReCAPTCHA
                    ref={recaptchaRef}
                    // size="invisible"
                    sitekey={process.env.NEXT_PUBLIC_RECAPTCHA_SITE_KEY as string}
                    onChange={onReCAPTCHAChange}
                />
                {
                    errors.token && <p className="Form-Error">Please accept the captcha.</p>
                }
            </div>


            {/* Send */}
            <div className="Form-send">
                <button disabled={sending} className="Form-btn">
                    {submit.label}
                </button>
                {
                    sending && <Loader />
                }
            </div>

            {/* Response Message */}
            {responseMessage && <p className={`Form-response ${failure && 'failure'}`}>{responseMessage}</p>}
        </form >

    )
}
