import Image from 'next/future/image'
import ReactMarkdown from 'react-markdown'
import { useGenerals } from '../../context/generals.context'
import { HomeAbout } from '../../interfaces'
import { Container } from '../globals'
import { Titles } from '../atoms'

interface AboutProps {
  about: HomeAbout,
  section: string
}

const HomeAbout = ({
  section,
  about,
}: AboutProps) => {
  const { polylang } = useGenerals()
  const { titles, img, content, list } = about
  return (
    <section className="HomeAbout" data-section={section}>
      <Container>
        <div className="HomeAbout-ctn">
          <div className="HomeAbout-left">
            <Image
              src={img.url}
              width={413}
              height={590}
              alt={` image`}
            />

          </div>

          <div className="HomeAbout-right">
            <Titles title={titles.title} />
            <div className="HomeAbout-content">
              <ReactMarkdown>{content}</ReactMarkdown>
            </div>
            <ul className="HomeAbout-ul">
              {
                list.map(({ icon, title }, index) => (
                  <li key={index} className="HomeAbout-li">
                    <Image
                      src={icon.url}
                      width={60}
                      height={60}
                      alt="icon"
                    />
                    <span className="HomeAbout-span">{title}</span>
                  </li>
                ))
              }

            </ul>
          </div>
        </div>
      </Container>
    </section>
  )
}

export default HomeAbout
