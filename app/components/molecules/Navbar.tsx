import { FC } from "react";
import { useNavbarContext } from "../../context/navbar.context";
import { useGenerals } from "../../context/generals.context";
import { goToSection } from "../../lib/utils";
import { Logo, Socials } from "../atoms";
import { useRouter } from "next/router";
import Link from "next/link";
import Image from "next/image";

interface NavbarProps {
  isMenuOpen: boolean;
  closeMenu: () => void;
}

export const Navbar: FC<NavbarProps> = ({ isMenuOpen, closeMenu }) => {
  const { polylang } = useGenerals();
  const router = useRouter();
  const { activeSection, isHeaderWhite, setscrolltoSectionFromContact } =
    useNavbarContext();

  const handleClick = (url: string) => {
    closeMenu();
    goToSection(url);
  };

  const handleContactClick = () => {
    closeMenu();
  };

  const handleGoToSection = (id: string) => {
    closeMenu();
    setscrolltoSectionFromContact(id);
  };

  return (
    <nav className={`Navbar ${isMenuOpen ? "isActive" : ""}`}>
      <div className="Navbar-container">
        <div className="Navbar-logo">
          <Logo />
        </div>
        <Socials />
      </div>

      <ul
        className={`Navbar-ul ${
          router.pathname == "/abogada-en-deudas-bancarias" ? "active" : ""
        }`}
      >
        {polylang.menu.map(({ id, label, url }) =>
          router.asPath === "/abogada-en-deudas-bancarias" ? (
            <Link href={`/`} key={id} className="Navbar-li">
              <div
                className={`${
                  isHeaderWhite ||
                  router.asPath === "/abogada-en-deudas-bancarias"
                    ? ""
                    : ""
                }`}
                onClick={() => handleGoToSection(url)}
              >
                {label}
              </div>
            </Link>
          ) : (
            <li
              onClick={() => handleClick(url)}
              className={`Navbar-li ${url === activeSection ? "isActive " : ""}`}
              key={id}
            >
              <div
                className={`Navbar-a  ${
                  isHeaderWhite ||
                  router.asPath === "/abogada-en-deudas-bancarias"
                    ? ""
                    : ""
                }`}
              >
                {label}
              </div>
            </li>
          )
        )}
        <div className="btn-whatsapp text-white" onClick={handleContactClick}>
          <a
            href={`${polylang.whatsapp_url}`}
            target="_blank"
            rel="noreferrer"
            className="Navbar-contact"
          >
            <Image src="/img/whatsapp.svg" alt="" width={30} height={30} />
            {polylang.whatsapp}
          </a>
        </div>
      </ul>
    </nav>
  );
};
