import { useRouter } from 'next/router'
import { FC } from 'react'
import { useGenerals } from '../../context/generals.context'
import { useNavbarContext } from '../../context/navbar.context'
import { goToSection } from '../../lib/utils'
import { Logo, Socials } from '../atoms'

interface NavbarProps {
  isMenuOpen: boolean
  closeMenu: () => void
}

export const Navbar: FC<NavbarProps> = ({ isMenuOpen, closeMenu }) => {
  const { polylang } = useGenerals()

  const router = useRouter()
  const { activeSection } = useNavbarContext()

  const handleClick = (id: string,numberpx?:number) => {
    closeMenu()
    goToSection(id,numberpx)
  }
  return (
    <nav className={`Navbar ${isMenuOpen ? 'isActive' : ''}`}>
      <div className="Navbar-container">
        <div className="Navbar-logo">
          <Logo type="nav" />
        </div>
        <Socials />
      </div>

      <ul className="Navbar-ul">
        {polylang.menu.map(({ id, label, url }) =>
          url !== '/contact' ? (
            <li
              onClick={() => handleClick(url)}
              className={`Navbar-li ${url === activeSection ? 'isActive' : ''}`}
              key={id}
            >
              <a
                className={`Navbar-a 
            }`}
              >
                {label}
              </a>
            </li>
          ) : (
            <li
              key={id}
              onClick={() => handleClick(url,220)}
              className={`Navbar-li ${url === activeSection ? 'isActive font-bold' : ''} cursor-pointer`}
            >
              {label}
            </li>
          )
        )}
        <li className="btn-number">
          <a href={`tel:${polylang.lbl_number}`}>
            <i className="icon-phone Footer-i"></i>
            {polylang.lbl_number}
          </a>
        </li>
      </ul>
    </nav>
  )
}
