import Image from 'next/future/image'
import React from 'react'
import { Autoplay, Navigation, Pagination, SwiperOptions } from 'swiper'
import { Swiper, SwiperSlide } from 'swiper/react'
import { useGenerals } from '../../context/generals.context'
import { Button, Information } from '../atoms'
import { Container } from '../globals'

interface HowWorkProps {
  title: string
  subtitle: string
  list_how: any[]
  section:string
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
    prevEl: '.HowWork-process-arrow-prev',
    nextEl: '.HowWork-process-arrow-next',
  },
  pagination: {
    el: '.HowWork-pagination',
    type: 'bullets',
    clickable: true,
  },
  modules: [Pagination, Autoplay, Navigation],
}

const HowWork = ({ title, subtitle, list_how,section }: HowWorkProps) => {
  const { polylang } = useGenerals()

  // console.log(list_how[0])
  return (
    
    <section className="HowWork" data-section={section}>
    <div className="bg"></div>
      {/* <picture className="HowWork-background">
        <source media="(min-width: 768px)" srcSet={bg_img} />
        <Image src={bg_img_mobile} alt="Imagen" fill />
      </picture> */}
      <div className='HowWork-general'>
      <Information
        subtitle={subtitle}
        title={title}
        content=""
        type="w-[82%]"
      />
      <div className="HowWork-ctn">
        <Container>
          <div
            // id={title}
            className="HowWork-process"
            // ref={currentProcess}
          >
            <div className="HowWork-process-swiper">
              <Swiper {...swiperOptions}>
                {list_how.map(({ title, content, img }, index) => (
                  <SwiperSlide key={index} className="swiper">
                    <picture className="HowWork__picture">
                      <Image src={img.url} width={200} height={200} alt="img" />
                      <div className="index">0{index + 1}</div>
                    </picture>
                    <div className="HowWork__info">
                      <div className="title">{title}</div>
                      <div className="content">{content}</div>
                    </div>
                  </SwiperSlide>
                ))}
              </Swiper>
              <div className="HowWork-pagination"></div>
            </div>
            <div className="HowWork__linea"></div>
          </div>
        </Container>
      </div>
      </div>
    </section>
    
  )
}

export default HowWork
