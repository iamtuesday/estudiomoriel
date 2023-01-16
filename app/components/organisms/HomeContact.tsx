import Image from "next/future/image";
import Head from "next/head";
import { FC } from "react";
import { Email, Submit, Service, Messages, Img } from "../../interfaces";
import { Form } from "./Form";
import { Titles } from "../atoms";

interface ContactProps {
  title: string;
  subtitle: string;
  name: Email;
  email: Email;
  phone: Email;
  service: Email;
  message: Email;
  messages: Messages;
  submit: Submit;
  services: Service[];
  section: string;
  img: Img;
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
  img
}) => {
  return (
    <section className="Contact" data-section={section}>
      <div className="Contact-top">
        <Titles title={title} subtitle={subtitle}  className="Center"/>
      </div>
      <div className="Contact-bottom">
        <Form
          name={name}
          phone={phone}
          email={email}
          message={message}
          service={service}
          services={services}
          submit={submit}
          messages={messages}
        />
        <figure>
          <Image src={img.url} alt="" width={400} height={400}/>
        </figure>
      </div>
    </section>
  );
};
