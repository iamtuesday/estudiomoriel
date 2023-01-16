import { FC } from "react";
import { Banner } from "../../interfaces";
import { BannerPrin } from "../molecules";
import {
    SwiperOptions,
    Pagination,
    Autoplay,
    Navigation,
    EffectFade,
} from "swiper";
import { Swiper, SwiperSlide } from "swiper/react";
import "swiper/css/effect-fade";

interface HomeBannerProps {
    bannerPrin: Banner[];
    section: string;
}

export const HomeBanner: FC<HomeBannerProps> = ({ bannerPrin, section }) => {
    const swiperOptions: SwiperOptions = {
        slidesPerView: "auto",
        effect: "fade",
        fadeEffect: {
            crossFade: true,
        },
        autoplay: {
            delay: 5000,
            disableOnInteraction: false,
        },
        loop: true,
        speed: 700,
        spaceBetween: 35,
        navigation: {
            prevEl: `.HomeBanner__btn__prev`,
            nextEl: `.HomeBanner__btn__next`,
        },
        pagination: {
            el: ".HomeBanner-pagination",
            clickable: true,
            type: "bullets",
        },
        breakpoints: {
            1: {
                slidesPerView: 1,
            },
            768: {
                slidesPerView: 1,
            },
        },
        modules: [Pagination, Autoplay, Navigation, EffectFade],
    };

    return (
        <div className="HomeBanner" data-section={section}>
            <Swiper {...swiperOptions}>
                {bannerPrin.map((item, index) => (
                    <SwiperSlide key={index}>
                        <BannerPrin banner={item} />
                    </SwiperSlide>
                ))}
            </Swiper>
            <div className="HomeBanner-pagination"></div>
            {/* <div className="arrow">
                <span className="icon-prev HomeBanner__btn  HomeBanner__btn__prev"></span>
                <span className="icon-next  HomeBanner__btn HomeBanner__btn__next"></span>
            </div> */}
        </div>
    );
};