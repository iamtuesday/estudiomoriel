import Image from "next/future/image";
import md from "markdown-it";
import { useGenerals } from "../../context/generals.context";
import { Aboutme } from "../../interfaces";
import { Container } from "../globals";
import { Titles } from "../atoms";

interface AboutProps {
  about: Aboutme;
}

export const AboutMe = ({ about }: AboutProps) => {
  const { polylang } = useGenerals();
  const { title, img, content, subtitle } = about;
  return (
    <section className="AboutMe">
      <Container>
        <div className="AboutMe-ctn">
          <div className="AboutMe-right">
            <Titles title={title} className="White"/>
            <div
              className="AboutMe-content"
              dangerouslySetInnerHTML={{ __html: md().render(content) }}
            />
          </div>

          <div className="AboutMe-left">
            <Image src={img.url} width={250} height={350} alt={` image`} />
          </div>
        </div>
      </Container>
    </section>
  );
};

