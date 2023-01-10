import Image from 'next/future/image'
import Head from 'next/head'
import { FC } from 'react'
import { Form as FormType, MessagesForm } from '../../interfaces'
import { Information } from '../atoms/Information'
import { Form } from './Form'

interface ContactProps {
  title: string
  subtitle: string
  form: FormType
  services: any[]
  messages: MessagesForm
  section:string
}

export const Contact: FC<ContactProps> = ({
  title,
  subtitle,
  form,
  services,
  section,
  messages,
}) => {

  return (
    <>
    <section className="Contact" data-section={section}>

        <div className="Contact-content">
          <div className='Contact-info'>
            <Information
              title={title}
              subtitle={subtitle}
              type='contact'
            />
          </div>
          <Form form={form} messages={messages} services={services} />
        </div>
      {/* </div> */}
    </section>
    </>
  )
}
