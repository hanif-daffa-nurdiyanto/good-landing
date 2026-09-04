import { AboutDetails, AboutImageStrip, AboutLists, AboutStory} from '@/components/about-content'
import { PageKicker } from '@/components/page-kicker'
import { SiteFooter } from '@/components/site-footer'
import { SiteHeader } from '@/components/site-header'

export const metadata = {
  title: 'About → Goodside',
}

export default function AboutPage() {
  return (
    <>
      <SiteHeader />
      <PageKicker
        copy="Selected identities for restaurants, venture firms, wellness products, climate tools, cultural places, and teams building what comes next."
        title="Goodside"
      />
      <AboutStory/>
      <AboutDetails />
      <AboutLists />
      <AboutImageStrip />
      <SiteFooter />
    </>
  )
}
