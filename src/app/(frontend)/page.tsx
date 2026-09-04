import { FeaturedWork } from '@/components/featured-work'
import { HeroSection } from '@/components/hero-section'
import { ManifestoSection } from '@/components/manifesto-section'
import { ProjectMarquee } from '@/components/project-marquee'
import { SiteFooter } from '@/components/site-footer'
import { SiteHeader } from '@/components/site-header'

export default async function HomePage() {
  return (
    <>
      <SiteHeader />
      <HeroSection />
      <ProjectMarquee />
      <ManifestoSection />
      <FeaturedWork />
      <SiteFooter />
    </>
  )
}
