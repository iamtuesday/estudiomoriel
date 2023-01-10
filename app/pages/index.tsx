import { GetStaticProps, NextPage } from "next";
import { useEffect } from "react";
import { SeoEngine } from "../components/globals";
import { OurServices } from "../components/organisms";
import About from "../components/organisms/HomeAbout";
import Characterist from "../components/organisms/HomeCharacterist";
import { HomeBlog } from "../components/organisms/HomeBlog";
import { useNavbarContext } from "../context/navbar.context";
import { useObserver } from "../hooks/useObserver";
import { ContactData, Contact, Home, HomeData } from "../interfaces";

import { baseApi } from "../lib/baseApi";
import { getGenerals } from "../lib/getGenerals";
import { goToSection } from "../lib/utils";
import HomeCharacterist from "../components/organisms/HomeCharacterist";
import { BannerMiddle } from "../components/molecules";
import { HomeContact, HomeBanner } from "./../components/organisms";

interface HomeProps {
  home: HomeData;
  contact: ContactData;
}

const HomePage: NextPage<HomeProps> = ({ home, contact }) => {
  const { setElements, entries } = useObserver({
    rootMargin: "-13% -0px -60% 0px",
  });
  const { setActiveSection, scrollToSectionFromContact, serviceSelected } =
    useNavbarContext();
  useEffect(() => {
    const elements = document.querySelectorAll("[data-section]");
    setElements(elements);
  }, [setElements]);

  useEffect(() => {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        const section = entry.target.getAttribute("data-section");

        // if (section === '#form') return

        setActiveSection(String(section));
      }
    });
  }, [entries, setActiveSection]);

  return (
    <main className=" main-page">
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

      <About about={home.HomeAbout} section="about" />

      <BannerMiddle banner_middle={home.banner_middle} />

      <OurServices service={home.HomeService} section="services" />

      <HomeContact
        email={contact.email}
        title={contact.title}
        subtitle={contact.subtitle}
        name={contact.name}
        submit={contact.submit}
        phone={contact.phone}
        message={contact.message}
        service={contact.service}
        services={home.HomeService.cardService}
        messages={contact.messages}
        section="contact"
      />

      {/* <SeoEngine seo={home.seo} /> */}
    </main>
  );
};

export const getStaticProps: GetStaticProps = async () => {
  const generals = await getGenerals();
  const [{ data: home }, { data: contact }] = await Promise.all([
    baseApi.get<Home>(`/home?populate=deep`),
    baseApi.get<Contact>("/contact?populate=deep"),
  ]);

  return {
    props: {
      home: home.data,
      contact: contact.data,
      generals,
    },
    revalidate: 1,
  };
};

export default HomePage;
