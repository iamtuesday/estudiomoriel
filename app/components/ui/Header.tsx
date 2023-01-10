import { useState } from 'react'
import { useNavbarContext } from '../../context/navbar.context'
import { Logo, MenuIcon, Socials } from '../atoms'

import { Navbar } from '../molecules'

export const Header = () => {
  
  const [isMenuOpen, setIsMenuOpen] = useState<boolean>(false)
  const { isHeaderWhite } = useNavbarContext()
 
  const toggleMenu = () => {
    setIsMenuOpen((prevState) => !prevState)
    document.body.classList.toggle('no-scroll')
  }

  const closeMenu = () => {
    setIsMenuOpen(false)
    document.body.classList.remove('no-scroll')
  }

  return (
    <header className={`Header ${isHeaderWhite ? 'White' : ''}`} id="Header">
      <div
        onClick={closeMenu}
        className={`Header-overlay ${isMenuOpen && 'isActive'}`}
      ></div>
      <div className= 'Header-logo'>
        <Logo />
      </div>

      <Socials />
      <div className={`Header-menuIcon ${isMenuOpen && 'isActive'}`}>
        <MenuIcon setIsActive={toggleMenu} isActive={isMenuOpen} />
      </div>
      <Navbar isMenuOpen={isMenuOpen} closeMenu={closeMenu} />
    </header>
  )
}
