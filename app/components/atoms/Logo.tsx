import Image from 'next/future/image'
import Link from 'next/link'
import { useRouter } from 'next/router'
import { FC } from 'react'
import { useGenerals } from '../../context/generals.context'
import { useNavbarContext } from '../../context/navbar.context'
import { goToSection } from '../../lib/utils'
interface LogoProps {
  type?: string
}
export const Logo: FC<LogoProps> = ({ type }) => {
  const { polylang } = useGenerals()
  const { activeSection, isHeaderWhite, setscrolltoSectionFromContact,setServiceSelected } =
    useNavbarContext()
  const router = useRouter()
  const handleGoToSection = () => {
    setscrolltoSectionFromContact('/')
    setServiceSelected('')
  }

  return router.asPath === '/contact' ? (
    <Link href={'/'} className="cursor-pointer">
      <a onClick={() => handleGoToSection()}>
        <picture className={`logo ${type}`}>
          <Image
            src={polylang.logo.url}
            alt="Logo"
            width={239.6}
            height={149.7}
          />
        </picture>
      </a>
    </Link>
  ) : (
    <a onClick={() => goToSection('/')} className="cursor-pointer">
      <picture className={`logo ${type}`}>
        <Image src={polylang.logo.url} alt="Logo" width={239.6} height={149.7} />
      </picture>
    </a>
  )
}
