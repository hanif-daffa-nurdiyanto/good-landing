import { PageKicker } from '@/components/page-kicker'
import { SiteFooter } from '@/components/site-footer'
import { SiteHeader } from '@/components/site-header'
import { WorkIndex } from '@/components/work-index'

export const metadata = {
  title: 'Work → Goodside',
}

export default function WorkPage() {
  return (
    <>
      <SiteHeader />
      <PageKicker
        copy="Selected identities for restaurants, venture firms, wellness products, climate tools, cultural places, and teams building what comes next."
        title="Goodside"
      />
      <WorkIndex />
      <SiteFooter />
    </>
  )
}
