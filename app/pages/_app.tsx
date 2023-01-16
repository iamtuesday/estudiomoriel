import type { AppProps } from 'next/app'
import Head from 'next/head'

import { ControllerState, GeneralsProvider } from '../context/generals.context'
import { NavbarProvider } from '../context/navbar.context'
import { Layout } from '../components/layouts'
import { Favicon } from '../components/globals'

import '../styles/globals.css'
import '../styles/container.css'
import 'swiper/css'

interface CustomPageProps {
  generals: ControllerState
}

function MyApp({ Component, pageProps }: AppProps<CustomPageProps>) {
  // console.log(pageProps)
  return (
    <>
      <Head>
        <title>Estudio Moriel</title>
        <Favicon />
      </Head>
      <GeneralsProvider generals={pageProps.generals}>
        <NavbarProvider>
          <Layout>
            <Component {...pageProps} />
          </Layout>
        </NavbarProvider>
      </GeneralsProvider>
    </>
  )
}

export default MyApp
