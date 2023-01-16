import type { NextPage } from "next";
import { getGenerals } from "../lib/getGenerals";

const Areas: NextPage = () => {
  return <div className=" main-page">Areas</div>;
};

export default Areas;

export const getStaticProps = async () => {
  const generals = await getGenerals();

  return {
    props: {
      generals,
    },
    revalidate: 1,
  };
};
