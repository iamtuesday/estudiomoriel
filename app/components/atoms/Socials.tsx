import { FC } from 'react'
import { useGenerals } from '../../context/generals.context'

interface SocialsProps {
  className?: string
}

export const Socials: FC<SocialsProps> = ({
  className  
}) => {
  const { polylang } = useGenerals()
  return (
    <div className={`socials ${className}`}>
      {polylang.social_networks.map(({ type, url }, i: number) => (
        <div key={i} title={`${!url ? 'Coming soon' : ''}`}>
          <a
            className={`socials__link ${!url ? 'pointer-events-none' : ''}`}
            href={url ? url : '#'}
            target="_blank"
            rel="noreferrer"
          >
            <i className={`socials__icon icon-${type} `} />
          </a>
        </div>
      ))}

    </div>
  )
}
