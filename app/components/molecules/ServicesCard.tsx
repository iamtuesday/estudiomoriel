import Image from "next/future/image";
import Link from "next/link";
import { useGenerals } from "../../context/generals.context";
import { Service } from "../../interfaces";
import { Button } from "../atoms";
import { useNavbarContext } from "../../context/navbar.context";
import { goToSection } from "../../lib/utils";

interface ServicesCardProps {
  service: Service;
}
export const ServicesCard = ({ service }: ServicesCardProps) => {
  const { title, content, img } = service;
  const { polylang } = useGenerals();
  const { setServiceSelected } = useNavbarContext();

  const handleSelectService = () => {
    setServiceSelected(title);
    goToSection("contact", 220);
  };
  return (
    <div className="ServicesCard" onClick={handleSelectService}>
      <Image alt={title} src={img.url} height={250} width={250} />
      <div className="ServicesCard-info">
        <div>
          <h2 className="ServicesCard-h2">{title}</h2>
          <p
            className="ServicesCard-p"
            dangerouslySetInnerHTML={{ __html: content }}
          />
        </div>
        <span  className="ServicesCard-btn">Contáctanos</span>
      </div>
    </div>
  );
};
