export const goToSection = (sectionName: string,numberpx:number=80) => {
  let offsetTop: number = 0
  if (sectionName !== '/') {
    const section = document.querySelector(`[data-section="${sectionName}"]`) as Element
    offsetTop = section.getBoundingClientRect().top + window.scrollY - numberpx
  }

  window.scrollTo({
    behavior: 'smooth',
    top: offsetTop
  })
}
export const convertToSlug = (text: string) => {
  return text
    .toLowerCase()
    .replace(/ /g, '-')
    .replace(/[^\w-]+/g, '')
}
