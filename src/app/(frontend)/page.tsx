import { FeaturedWork } from '@/components/featured-work'
import { HeroSection } from '@/components/hero-section'
import { ManifestoSection } from '@/components/manifesto-section'
import { ProjectMarquee } from '@/components/project-marquee'
import { SiteFooter } from '@/components/site-footer'
import { SiteHeader } from '@/components/site-header'
import { getContactPage, getPage } from '@/lib/page-data'

export const dynamic = 'force-dynamic'

export default async function HomePage() {
  const [page, contact] = await Promise.all([getPage('home'), getContactPage()])

  return (
    <>
      <SiteHeader contact={contact} intro={page.heroCopy} />
      <HeroSection page={page} />
      <ProjectMarquee projects={page.marqueeProjects ?? []} />
      <ManifestoSection page={page} />
      <FeaturedWork page={page} />
      <SiteFooter contact={contact} />
    </>
  )
}
