import React from "react";
import { Logo, Socials } from "../atoms";
import { useGenerals } from "../../context/generals.context";

export const Footer = () => {
  const { polylang } = useGenerals();

  const { whatsapp, address, url_map, email } = polylang;

  return (
    <footer className="Footer">
      <div className="Footer-Content">
        <div className="Footer-Logo">
          <Logo />
        </div>
        <ul className="Footer-ul">
          <li className="Footer-li">
            {/* <h2 className="Footer-label">{footer_titles.lbl_address}</h2> */}
            <a
              className={`Footer-a ${!url_map ? "pointer-events-none" : ""}`}
              href={url_map || "#"}
              target="_blank"
              rel="noreferrer"
            >
              {/* <i className="icon-location Footer-i"></i> */}
              {address}
            </a>
          </li>

          <li className="Footer-li">
            {/* <h2 className="Footer-label">{footer_titles.lbl_email}</h2> */}
            <a className="Footer-a" href={`mailto:${email}`}>
              {/* <i className="icon-email Footer-i"></i> */}
              {email}
            </a>
          </li>

          <li className="Footer-li">
            {/* <h2 className="Footer-label">{footer_titles.lbl_phone}</h2> */}
            <a className="Footer-a" href={`tel:${whatsapp}`}>
              {/* <i className="icon-phone-2 Footer-i"></i> */}
              {whatsapp}
            </a>
          </li>

        </ul>
        <div className="Footer-Socials">
          {/* <p className="Footer-lblFollow">{footer_titles.lbl_follow}</p> */}
          <Socials className="Footer-socials" />
        </div>
      </div>
      <div className="Footer-Copyright">
        {/* <h3>{footer_titles.lbl_copyright}</h3> */}
      </div>
    </footer>
  );
};