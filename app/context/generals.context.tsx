import { useRouter } from 'next/router'
import {
  createContext,
  FC,
  PropsWithChildren,
  useContext,
  useEffect,
  useState,
} from 'react'
import { PolylangData } from '../interfaces/generals'

export interface ControllerState {
  polylang: PolylangData
}

const useGeneralsController = ({
  polylang,
}: ControllerState): ControllerState => {
  const [generals, setGenerals] = useState({ polylang })
  useEffect(() => {}, [])

  return { polylang: generals.polylang }
}

const initialState: ControllerState = {
  polylang: {
    // id:               0;
    lbl_see_services: '',
    lbl_send: '',
    lbl_book_now: '',
    lbl_number: '',
    tag_manager:'',
    facebook_id:'',
    pixel_facebook:'',
    email: '',
    address: '',
    url_map: '',
    whatsapp: '',
    whatsapp_url: '',
    logo: {
      name: '',
      width: 0,
      height: 0,
      url: '',
    },
    menu: [],
    social_networks:[]
  },
}

const GeneralsContext =
  createContext<ReturnType<typeof useGeneralsController>>(initialState)

interface GeneralsProviderProps extends PropsWithChildren {
  generals: ControllerState
}

export const GeneralsProvider: FC<GeneralsProviderProps> = ({
  children,
  generals,
}) => {
  return (
    <GeneralsContext.Provider value={useGeneralsController(generals)}>
      {children}
    </GeneralsContext.Provider>
  )
}

export const useGenerals = () => useContext(GeneralsContext)
