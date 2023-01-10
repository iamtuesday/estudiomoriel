import { FC } from 'react'
import { Articles, Titles } from '../../interfaces'
import { Information } from '../atoms/Information'
import { Container } from '../globals'
import { BlogCard } from '../molecules/BlogCard'

interface HomeBlogProps {
   titles: Titles
   section: string
   cards: Articles[]
}

export const HomeBlog: FC<HomeBlogProps> = ({ titles,  cards,section}) => {
   const {title,subtitle} = titles
   return (
      <section className="HomeBlog" data-section={section}>
         <Container>
            <div className="HomeBlog-info">
               <Information  subtitle={subtitle as string} title={title} type="left" />
            </div>
            <div className='HomeBlog-cards'>
              {cards.map((card,index)=><BlogCard key={index} cardBlog={card}/>)}
            </div>
         </Container>
   </section>
   )
}