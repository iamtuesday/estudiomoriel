import { Articles} from '../../interfaces'

interface BlogCardProps {
  cardBlog : Articles
}
export const BlogCard = ({ cardBlog }: BlogCardProps) => {
  const {title,subtitle,content} = cardBlog
  return (
    <div className='BlogCard'>
        <h3>{subtitle}</h3>
        <h2>{title}</h2>
        <p>{content}</p>
    </div>
  )
}
