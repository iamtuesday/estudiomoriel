import React from 'react'
import { Socials } from '../atoms'
import { useGenerals } from '../../context/generals.context'

export const Footer = () => {
   const { polylang } = useGenerals()
   return (
      <footer className="Footer">
         <div className="Footer-container">
            
         <Socials className="Footer-socials" />
            <ul className="Footer-ul">
               <li>
                  <a
                     className={`Footer-a ${!polylang.url_map ? 'pointer-events-none' : ''}`}
                     href={polylang.url_map}
                     target="_blank"
                     rel="noreferrer"
                  >
                     <i className="icon-location Footer-i"></i>
                     {polylang.address}
                  </a>
               </li>
               <li>
                  <a className="Footer-a" href={`tel:${polylang.lbl_number}`}>
                     <i className="icon-phone Footer-i"></i>
                     {polylang.lbl_number}
                  </a>
               </li>
               <li>
                  <a className="Footer-a" href={`mailto:${polylang.email}`}>
                     <i className="icon-mail Footer-i"></i>
                     {polylang.email}
                  </a>
               </li>
               {/* <li>
                  <a className="Footer-a">
                     <i className="icon-attention Footer-i"></i>
                     {polylang.schedule}
                  </a>
               </li> */}
              
            </ul>
           
         </div>
      </footer>
   )
}
