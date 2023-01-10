import { FC } from 'react'
import { Service, Titles } from '../../interfaces'
import { Information } from '../atoms/Information'
import { Container } from '../globals'
import { ServicesList } from '../molecules'

interface OurServicesProps {
   titles: Titles
   section: string
   services: Service[]
}

export const OurServices: FC<OurServicesProps> = ({ titles, services, section}) => {
   const {title,subtitle} = titles
   return (
      <section className="OurServices" data-section={section}>
         <Container>
            <div className="OurServices-info">
               <Information  subtitle={subtitle as string} title={title} />
            </div>
            <ServicesList services={services} />
         </Container>
   </section>
   )
}
