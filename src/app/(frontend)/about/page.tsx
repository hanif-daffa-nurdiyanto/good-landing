import { AboutDetails, AboutImageStrip, AboutLists, AboutStory } from '@/components/about-content'
import { PageKicker } from '@/components/page-kicker'
import { SiteFooter } from '@/components/site-footer'
import { SiteHeader } from '@/components/site-header'
import { getContactPage, getPage } from '@/lib/page-data'

export const metadata = {
  title: 'About → Goodside',
}

export const dynamic = 'force-dynamic'

export default async function AboutPage() {
  const [page, home, contact] = await Promise.all([
    getPage('about'),
    getPage('home'),
    getContactPage(),
  ])

  return (
    <>
      <SiteHeader contact={contact} intro={home.heroCopy} />
      <PageKicker
        copy={page.kickerCopy ?? undefined}
        title={page.kickerTitle ?? page.title}
      />
      <AboutStory page={page} />
      <AboutDetails page={page} />
      <AboutLists page={page} />
      <AboutImageStrip page={page} />
      <SiteFooter contact={contact} />
    </>
  )
}
