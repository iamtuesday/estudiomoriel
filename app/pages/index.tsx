import { GetStaticProps, NextPage } from 'next'
import { useEffect } from 'react'
import { SeoEngine } from '../components/globals'
import { Contact, MainBanner, OurServices } from '../components/organisms'
import About from '../components/organisms/HomeAbout'
import Characterist from '../components/organisms/HomeCharacterist'
import { HomeBlog } from '../components/organisms/HomeBlog'
import { useNavbarContext } from '../context/navbar.context'
import { useObserver } from '../hooks/useObserver'
import { ContactData, ContactPage, Home, HomeData } from '../interfaces'

import { baseApi } from '../lib/baseApi'
import { getGenerals } from '../lib/getGenerals'
import { goToSection } from '../lib/utils'
import { HomeBanner } from '../components/organisms/HomeBanner'
import HomeCharacterist from '../components/organisms/HomeCharacterist';

interface HomeProps {
  home: HomeData
  contact: ContactData
}

const HomePage: NextPage<HomeProps> = ({ home, contact }) => {
  const { setElements, entries } = useObserver({
    rootMargin: '-13% -0px -60% 0px',
  })
  const { setActiveSection, scrollToSectionFromContact, serviceSelected } =
    useNavbarContext()
  useEffect(() => {
    const elements = document.querySelectorAll('[data-section]')
    setElements(elements)
  }, [setElements])

  useEffect(() => {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        const section = entry.target.getAttribute('data-section')

        // if (section === '#form') return

        setActiveSection(String(section))
      }
    })
  }, [entries, setActiveSection])

  return (
    <main className=" main-page">
      {/* Banner Principal */}
      {/* <MainBanner
        title={home.HomeBanner.title}
        content={home.HomeBanner.content}
        img={home.HomeBanner.img.url}
        img_mobile={home.HomeBanner.img_mobile.url}
        section="/home"
      /> */}
      {/* <Contact
        title={contact.title}
        subtitle={contact.subtitle}
        form={contact.form}
        services={home.HomeService.cardService}
        messages={contact.messages}
        section="/contact"
      /> */}
      <HomeBanner bannerPrin={home.HomeBanner} />
      <HomeCharacterist characteristic={home.characteristic} />
      {/* <OurServices
        titles={home.HomeService.titles}
        services={home.HomeService.cardService}
        section="/service"
      /> */}
      <About
        about={home.HomeAbout}
        section="about"
      />

      {/* <Characterist
        title={home.HomeCharac.title}
        list_chara={home.HomeCharac.cardChara}
        img={home.HomeCharac.img}
        img_mobile={home.HomeCharac.img_mobile}
        section="/characterist"
      /> */}
      {/* <HomeBlog
        titles={home.HomeBlog.titles}
        cards={home.HomeBlog.cardArticle}
        section="/blog"
      /> */}

      <SeoEngine seo={home.seo} />
    </main>
  )
}

export const getStaticProps: GetStaticProps = async () => {
  const generals = await getGenerals()
  const [{ data: home }, { data: contact }] = await Promise.all([
    baseApi.get<Home>(`/home?populate=deep`),
    baseApi.get<ContactPage>('/contact?populate=deep'),
  ])

  return {
    props: {
      home: home.data,
      contact: contact.data,
      generals,
    },
    revalidate: 1,
  }
}

export default HomePage
