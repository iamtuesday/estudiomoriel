import { FC } from 'react'
import { HomeService, Service } from '../../interfaces'
import { Container } from '../globals'
import { ServicesList } from '../molecules'
import { Titles } from '../atoms'


interface OurServicesProps {
   service: HomeService
   section: string
}

export const OurServices: FC<OurServicesProps> = ({ service, section}) => {
   const {titles, cardService } = service
   return (
      <section className="OurServices" data-section={section}>
         <Container>
            <div className="OurServices-info">
               <Titles  title={titles.title} subtitle={titles.subtitle}  />
            </div>
            <ServicesList services={cardService} />
         </Container>
   </section>
   )
}
