import Image from 'next/future/image'
import Head from 'next/head'
import { FC } from 'react'
import { Email, Submit, Service,  Messages } from '../../interfaces'
import { Information } from '../atoms/Information'
import { Form } from './Form'
import { Titles } from '../atoms'

interface ContactProps {
  title: string,
  subtitle: string,
  name: Email,
  email: Email,
  phone: Email,
  service: Email,
  message: Email,
  messages: Messages,
  submit: Submit,
  services: Service[],
  section: string
}

export const HomeContact: FC<ContactProps> = ({
  title,
  subtitle,
  name,
  email,
  phone,
  message,
  submit,
  service,
  messages,
  services,
  section,
}) => {

  return (
    <>
    <section className="Contact" data-section={section}>

        <div className="Contact-content">
          <div className='Contact-info'>
            <Titles
              title={title}
              subtitle={subtitle}
            />
          </div>
          <Form name={name}
                        phone={phone}
                        email={email}
                        message={message}
                        service={service}
                        services={services}
                        submit={submit}
                        messages={messages}
                    />
        </div>
      {/* </div> */}
    </section>
    </>
  )
}
