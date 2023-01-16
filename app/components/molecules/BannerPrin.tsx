import { FC, CSSProperties, useEffect } from "react";
import { useGenerals } from "../../context/generals.context";
import { Button } from "../atoms";
import { Banner } from "../../interfaces";

interface BannerPrinProps {
    banner: Banner,
}

export const BannerPrin: FC<BannerPrinProps> = ({
    banner,
}) => {
    const { polylang } = useGenerals();
    const { bg, bg_mob, title, subtitle } = banner;


    return (
        <div className="banner-prin"
            style={{
                "--bg-desktop": `url(${bg.url})`,
                "--bg-mobile": `url(${bg_mob.url})`
            } as CSSProperties}
        >

            <div className="banner-prin__top">
                <h2 className="banner-prin__subtitle" >{subtitle}</h2>

                <div className='srt'
                    dangerouslySetInnerHTML={{ __html: title }}
                />

                <div className="banner-prin__btn">
                    <Button variant="secondary">{polylang.lbl_contact_us}</Button>
                </div>
            </div>

        </div>

    );
};