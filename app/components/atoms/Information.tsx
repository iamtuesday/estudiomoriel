import { FC } from 'react'

interface Information {
  subtitle: string
  title: string
  content?: String
  type?: String
}

export const Information: FC<Information> = ({
  subtitle,
  title,
  content,
  type,
}) => {
  return (
    <div className={`Information ${type === 'left' ? 'left' : ''}`}>
      <h3 className={`Information-h3`}>{subtitle}</h3>
      <h2 className={`Information-h2 `}>{title}</h2>
      <p className={`Information-content`}>{content}</p>
    </div>
  )
}
