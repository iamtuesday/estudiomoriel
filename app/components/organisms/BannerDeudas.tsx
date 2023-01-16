import { FC, CSSProperties, useEffect } from "react";
import { useGenerals } from "../../context/generals.context";
import { Button } from "../atoms";
import { BannerDeudas } from "../../interfaces";

interface BannerMiddleProps {
  banner: BannerDeudas;
}

export const BannerRedirect: FC<BannerMiddleProps> = ({ banner }) => {
  const { polylang } = useGenerals();
  const { title, content, label } = banner;

  return (
    <div className="bannerDeudas">
      <h2 className="bannerDeudas-title">{title}</h2>

      <p
        className="bannerDeudas-content"
        dangerouslySetInnerHTML={{ __html: content }}
      />

      <div className="bannerDeudas-btn">
        <Button variant="default" to="/abogada-en-deudas-bancarias">{label}</Button>
      </div>
    </div>
  );
};
