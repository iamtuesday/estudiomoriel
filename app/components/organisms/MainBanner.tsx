import Image from 'next/future/image'
import Link from 'next/link'
import { FC } from 'react'
import { useGenerals } from '../../context/generals.context'
import { goToSection } from '../../lib/utils'
import { Button, Socials } from '../atoms'
import { Container } from '../globals'

interface MainBannerProps {
  title: string

  content: string
  img: string
  img_mobile: string
  section: string
}

export const MainBanner: FC<MainBannerProps> = ({
  title,
  content,
  img,
  img_mobile,
  section,
}) => {
  const { polylang } = useGenerals()
  return (
    <section data-section={section} className="MainBanner">
      <div className='MainBanner-socials'>
      <Socials />
      </div>
      <picture className="MainBanner-background">
        <source media="(min-width: 768px)" srcSet={img} />
        <Image src={img_mobile} alt="Imagen" fill priority />
      </picture>
      <div className="MainBanner-container">
        <Container>
          <div className="MainBanner-grid">
            <div className="MainBanner-content">
              <h1
                className="MainBanner-h1"
                dangerouslySetInnerHTML={{ __html: title }}
              ></h1>
              <p
                className="MainBanner-p"
                dangerouslySetInnerHTML={{ __html: content }}
              />
              <div className="MainBanner-btns" onClick={() => goToSection('/service')} >
                <Button variant="primary">
                  {polylang.lbl_see_services}
                </Button>
              </div>
            </div>
          </div>
        </Container>
      </div>
    </section>
  )
}
