import type { GetStaticProps, NextPage } from "next";
import { getGenerals } from "../lib/getGenerals";
import { Deudas, DeudasData, Home, HomeData } from "../interfaces";
import { baseApi } from "../lib/baseApi";
import { BannerMiddle } from "../components/molecules";
import { VideoList, AboutMe } from "../components/organisms";

interface DeudasProps {
  deudas: DeudasData;
  home: HomeData;
}

const DeudasPage: NextPage<DeudasProps> = ({ deudas, home }) => {
  const { videos, aboutme } = deudas;
  return (
    <div className="main-page min-h-screen">
      <BannerMiddle banner_middle={home.banner_middle} />
      <VideoList videos={videos} />
      <AboutMe about={aboutme}/>
    </div>
  );
};

export const getStaticProps: GetStaticProps = async () => {
  const generals = await getGenerals();
  const [{ data: deudas }, { data: home }] = await Promise.all([
    baseApi.get<Deudas>(`/deuda?populate=deep`),
    baseApi.get<Home>(`/home?populate=deep`),
  ]);

  return {
    props: {
      deudas: deudas.data,
      home: home.data,
      generals,
    },
    revalidate: 1,
  };
};

export default DeudasPage;
