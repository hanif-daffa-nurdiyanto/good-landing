import { ContactContent } from '@/components/contact-content'
import { PageKicker } from '@/components/page-kicker'
import { SiteHeader } from '@/components/site-header'

export const metadata = {
  title: 'Contact → Goodside',
}

export default function ContactPage() {
  return (
    <>
      <SiteHeader />
      <PageKicker
        copy="Selected identities for restaurants, venture firms, wellness products, climate tools, cultural places, and teams building what comes next."
        title="Goodside"
      />
      <ContactContent />
    </>
  )
}
