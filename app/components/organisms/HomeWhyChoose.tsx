import Image from "next/future/image";
import md from "markdown-it";
import { useGenerals } from "../../context/generals.context";
import { Choose } from "../../interfaces";
import { Titles } from "../atoms";

interface AboutProps {
  choose: Choose;
  section: string;
}

const HomeWhyChoose = ({ choose, section }: AboutProps) => {
  const { polylang } = useGenerals();
  const { title, list } = choose;
  return (
    <section className="HomeWhyChoose" data-section={section}>
      <Titles title={title} />
      <div className="HomeWhyChoose-ul">
        {list.map(({ title, content, icon }, index) => {
          return (
            <article key={index} className="HomeWhyChoose-li">
              <figure className="HomeWhyChoose-img">
                <Image
                  src={icon.url}
                  alt={icon.alternativeText}
                  width={icon.width}
                  height={icon.height}
                />
              </figure>
              <div className="HomeWhyChoose-content">
                <h3 className="HomeWhyChoose-h3">{title}</h3>
                <p className="HomeWhyChoose-p">{content}</p>
              </div>
            </article>
          );
        })}
      </div>
    </section>
  );
};

export default HomeWhyChoose;
