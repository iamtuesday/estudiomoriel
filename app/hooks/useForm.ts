import { FormEvent, useState, useRef, useEffect } from 'react'
import axios from 'axios'
import { Messages } from '../interfaces';
import ReCAPTCHA from "react-google-recaptcha";
import {
    InitialFormErrors,
    initialFormErrors,
    InitialFormState,
    initialFormState,
    TYPE_FIELD,
    TYPE_FIELD_PROPS
} from '../lib/form'
import { baseApi } from '../lib/baseApi';
export const useForm = (messages: Messages, submitUrl: string) => {
    const [errors, setErrors] = useState<InitialFormErrors>(initialFormErrors)
    const [formState, setFormState] = useState<InitialFormState>(initialFormState)
    const [responseMessage, setResponseMessage] = useState<string>('')
    const [sending, setSending] = useState<boolean>(false)
    const [failure, setFailure] = useState<boolean>(false)
    // const [validCaptcha, setValidCaptcha] = useState<boolean>(false);
    const recaptchaRef = useRef<ReCAPTCHA>(null);



    /**
     *
     * Devuelve un mensaje del formulario si se cumple alguna condicion del switch.
     * Se pueden agregar los case necesarios al switch para validar mas tipos de errores
     *
     * @param type Tipo de expresion regular del formulario
     * @returns Mensaje del formulario
     */
    const validateRegexMessage = (type: string): string => {
        switch (type) {
            case 'email':
                return messages.invalid_email
            case 'phone':
                return messages.invalid_tel
            default:
                return messages.invalid_required
        }
    }
    /**
     *
     * Coloca el mensaje de error al error especificado en el key
     *
     * @param key key de el objeto errors
     * @param errorMessage mensaje de error
     */
    const setError = (key: keyof InitialFormErrors, errorMessage: string) => {
        setErrors((prevState) => {
            return { ...prevState, [key]: errorMessage }
        })
    }
    /**
     *
     * Cambia el valor del formState segun el key
     *
     * @param key que valor del formState se va a cambiar
     * @param value valor que va a tomar
     */
    const setFormValue = (key: keyof InitialFormState, value: string) => {
        setFormState((prevState) => {
            return { ...prevState, [key]: value }
        })
    }
    /**
     *
     * Coloca o limpia los errrores de los campos input configurados
     *
     * @param e Evento del Input
     */
    const validateInput = (e: FormEvent<HTMLInputElement>) => {
        const errorsKey = e.currentTarget.name as keyof InitialFormErrors // name del input
        const TYPE_FIELD_KEY = e.currentTarget.name as keyof TYPE_FIELD_PROPS // name del input
        const formStateKey = e.currentTarget.name as keyof InitialFormState
        const inputValue = e.currentTarget.value // value del input
        setFormValue(formStateKey, inputValue)
        // Valida si el input esta vacio
        if (!String(inputValue).trim()) {
            setError(errorsKey, messages.invalid_required)
            return
        }
        // Valida si cumple el patron de la expresion regular
        if (!TYPE_FIELD[TYPE_FIELD_KEY].test(inputValue)) {
            setError(errorsKey, validateRegexMessage(errorsKey))
            return
        }
        // Limpia el error
        setError(errorsKey, '')
    }
    const handleInput = (e: FormEvent<HTMLTextAreaElement>) => {
        const key = e.currentTarget.name as keyof InitialFormState
        const value = e.currentTarget.value
        setFormValue(key, value)
    }
    /**
     *
     * Valida el select, si esta vacio pone error, sino lo limpia
     *
     * @param e evento del select
     *
     */
    const validateSelect = (e: FormEvent<HTMLSelectElement>) => {
        const value = e.currentTarget.value
        const key = e.currentTarget.name as keyof InitialFormErrors
        setFormValue(key, value)
        if (!value) {
            setError(key, messages.invalid_required)
            return
        }
        setError(key, '')
    }
    /**
     *
     * Verifica si hay algun campo vacio y coloca errores
     *
     * @returns Retorna true si hay algun campo vacio
     *
     */
    const verifyFormAndSetErrors = (): boolean => {
        const errorsCopy = { ...errors }
        Object.keys(errorsCopy).forEach((key) => {
            const errorKey = key as keyof InitialFormErrors
            const formStateKey = key as keyof InitialFormState
            if (errorsCopy[errorKey]) return
            if (formState[formStateKey].trim() === '') {
                errorsCopy[errorKey] = messages.invalid_required
                setTimeout(() => {
                    setError(errorKey, '')
                }, 4000)
                return
            }
            errorsCopy[errorKey] = ''
        })
        setErrors(errorsCopy)
        return Object.values(errorsCopy).some((val) => val.length)
    }


    const handleSubmit = async (e: FormEvent<HTMLFormElement>) => {
        e.preventDefault()

        let tokenCatpcha = recaptchaRef?.current?.getValue();

        if (verifyFormAndSetErrors()) {
            setFailure(true)
            setResponseMessage(messages.validation_error)
            setTimeout(() => {
                setResponseMessage('')
                setFailure(false)
            }, 4000)
            return
        }

        try {

            if (tokenCatpcha) {

                const { status } = await baseApi.post(submitUrl, { formData: formState });

                setResponseMessage('Thank you for your message. It has been sent')

                setTimeout(() => {

                    setResponseMessage('');

                }, 4000);

                if (status === 200) {

                    recaptchaRef?.current?.reset();

                    setFormState(initialFormState)

                    setFailure(false)

                } else {

                    setFailure(true)

                    verifyFormAndSetErrors()

                }

            }

        } catch (error) {

            console.error(error)

        } finally {

            setSending(false)

        }
    }
    return {
        errors,
        failure,
        formState,
        responseMessage,
        sending,
        handleInput,
        handleSubmit,
        validateInput,
        validateSelect,
        setFormState,
        recaptchaRef,
    }
}
