import { ContactContent } from '@/components/contact-content'
import { PageKicker } from '@/components/page-kicker'
import { SiteHeader } from '@/components/site-header'
import { getContactPage, getPage } from '@/lib/page-data'

export const metadata = {
  title: 'Contact → Goodside',
}

export const dynamic = 'force-dynamic'

export default async function ContactPage() {
  const [page, home] = await Promise.all([getContactPage(), getPage('home')])

  return (
    <>
      <SiteHeader contact={page} intro={home.heroCopy} />
      <PageKicker
        copy={page.kickerCopy ?? undefined}
        title={page.kickerTitle ?? page.title}
      />
      <ContactContent page={page} />
    </>
  )
}
