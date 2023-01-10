import Image from 'next/future/image'
import Link from 'next/link'
import { useGenerals } from '../../context/generals.context'
import { Service } from '../../interfaces'
import { Button } from '../atoms'
import ReactMarkdown from 'react-markdown'
import { useNavbarContext } from '../../context/navbar.context'
import { goToSection } from '../../lib/utils'

interface ServicesCardProps {
  service: Service
}
export const ServicesCard = ({ service }: ServicesCardProps) => {
  const { title, content, img_mobile, img } = service
  const { polylang } = useGenerals()
  const { setServiceSelected } = useNavbarContext()

  const handleSelectService = () => {
    setServiceSelected(title)
    goToSection('/contact',220)
  }
  return (

      <div
        className="ServicesCard cursor-pointer"
        onClick={handleSelectService}
      >
        <picture className="ServicesCard-picture">
          <source media="(min-width: 768px)" srcSet={img.url} />
          <Image alt={title} src={img_mobile.url} height={400} width={500} />
        </picture>
        <div className="ServicesCard-info">
          <h2>{title}</h2>

          <ReactMarkdown className="ServicesCard__content">
            {content}
          </ReactMarkdown>
        </div>
        <div onClick={handleSelectService } className="ServicesCard-btn">
          <Button style="secondary">
            {polylang.lbl_book_now}
          </Button>
        </div>
      </div>
    
  )
}
