import { FC, PropsWithChildren } from 'react'
import ObserverTop from '../atoms/ObserverTop'
import { CustomHead } from '../globals'
import { Footer, Header } from '../ui'

export const Layout: FC<PropsWithChildren> = ({ children }) => {
   return (
      <>
         <CustomHead />
         <ObserverTop />
         <Header />
         {children}
         <Footer />
      </>
   )
}
