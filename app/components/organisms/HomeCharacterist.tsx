import Image from 'next/future/image'
import ReactMarkdown from 'react-markdown'
import { Autoplay, Navigation, Pagination, SwiperOptions } from 'swiper'
import { Swiper, SwiperSlide } from 'swiper/react'
import { HomeCharac } from '../../interfaces'
interface CharacteristProps {
  characteristic: HomeCharac[]
}
const swiperOptions: SwiperOptions = {
  slidesPerView: 'auto',
  autoplay: {
    delay: 5000,
    disableOnInteraction: false,
  },
  loop: false,
  speed: 700,
  spaceBetween: 35,

  breakpoints: {
    375: {
      slidesPerView: 1,
      spaceBetween: 35,
    },
    768: {
      slidesPerView: 2,
      spaceBetween: 35,
    },
    1024: {
      slidesPerView: 4,
      spaceBetween: 0,
    },
  },
  navigation: {
    prevEl: '.HomeCharacterist-process-arrow-prev',
    nextEl: '.HomeCharacterist-process-arrow-next',
  },
  pagination: {
    el: '.HomeCharacterist-pagination',
    type: 'bullets',
    clickable: true,
  },
  modules: [Pagination, Autoplay, Navigation],
}

const HomeCharacterist = ({ characteristic }: CharacteristProps) => {
  return (
    <section className="HomeCharacterist">
      <Swiper {...swiperOptions} >
        {characteristic.map(({ title, description, icon }, index) => (
          <SwiperSlide key={index} className="swiper">
            <div className="HomeCharacterist-list">
              <figure className="HomeCharacterist-icon">
                <Image
                  src={icon.url}
                  width={80}
                  height={80}
                  alt="icon"
                />
              </figure>
              <div className="HomeCharacterist-info">
                <h3 className="HomeCharacterist-h3">{title}</h3>
                <p className="HomeCharacterist-p">{description}</p>
              </div>
            </div>
          </SwiperSlide>
        ))}
      </Swiper>
      <div className="HomeCharacterist-pagination"></div>

    </section>
  )
}

export default HomeCharacterist
