import { FC } from 'react'
import {  Service } from '../../interfaces'
import { ServicesCard } from './ServicesCard'

interface ServicesListProps {
   services: Service[]
}

export const ServicesList: FC<ServicesListProps> = ({ services }) => {
  
   return (
      <div className="ServicesList">
         {services.map((service, index) => (
            <ServicesCard key={index} service={service} />
         ))}
      </div>
   )
}
