import { useState, createContext, useContext, PropsWithChildren, FC, Dispatch, SetStateAction } from 'react'

interface NavbarContextType {
   activeSection: string
   setActiveSection: Dispatch<SetStateAction<string>>
   formServiceValue: string
   setFormServiceValue: Dispatch<SetStateAction<string>>
   isHeaderWhite: boolean
   setIsHeaderWhite: Dispatch<SetStateAction<boolean>>
   scrollToSectionFromContact: string;
   setScrollToSectionFromContact: Dispatch<SetStateAction<string>>;
   serviceSelected: string;
   setServiceSelected: Dispatch<SetStateAction<string>>;
}

const NavbarContext = createContext<NavbarContextType>({
   activeSection: '',
   setActiveSection: () => '',
   formServiceValue: '',
   setFormServiceValue: () => '',
   serviceSelected: '',
   setServiceSelected: () => '',
   isHeaderWhite: false,
   setIsHeaderWhite: () => '',
   scrollToSectionFromContact: "",
   setScrollToSectionFromContact: () => "",
})

export const NavbarProvider: FC<PropsWithChildren> = ({ children }) => {
   const [activeSection, setActiveSection] = useState<string>('')
   const [formServiceValue, setFormServiceValue] = useState<string>('')
   const [isHeaderWhite, setIsHeaderWhite] = useState<boolean>(false)
   const [serviceSelected, setServiceSelected] = useState<string>('')
   const [scrollToSectionFromContact, setScrollToSectionFromContact] = useState<string>("");
   return (
      <NavbarContext.Provider
         value={{
            activeSection,
            setActiveSection,
            formServiceValue,
            setFormServiceValue,
            isHeaderWhite,
            setIsHeaderWhite,
            serviceSelected,
            setServiceSelected,
            scrollToSectionFromContact,
            setScrollToSectionFromContact,
         }}
      >
         {children}
      </NavbarContext.Provider>
   )
}

export const useNavbarContext = () => {
   const context = useContext(NavbarContext)

   if (context === undefined) {
      throw new Error('NavbarContext debe ser usado dentro de NavbarProvider')
   }

   return context
}
