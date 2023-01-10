import { FC, CSSProperties } from "react";
import { useGenerals } from "../../context/generals.context";
import { Button } from "../atoms";
import { BannerMid } from "../../interfaces";

interface BannerPrinProps {
    banner_middle: BannerMid;
}

export const BannerMiddle: FC<BannerPrinProps> = ({ banner_middle }) => {
  const { polylang } = useGenerals();
  const { bg, bg_mob, content } = banner_middle;

  return (
    <div
      className="BannerMiddle"
      style={
        {
          "--bg-desktop": `url(${bg.url})`,
          "--bg-mobile": `url(${bg_mob.url})`,
        } as CSSProperties
      }
    >
      <h4 className="BannerMiddle-h4" dangerouslySetInnerHTML={{ __html: content }} />

      <div className="BannerMiddle-btn">
        <Button variant="secondary">{polylang.lbl_book_now}</Button>
      </div>
    </div>
  );
};
