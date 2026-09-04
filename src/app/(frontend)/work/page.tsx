import { PageKicker } from '@/components/page-kicker'
import { SiteFooter } from '@/components/site-footer'
import { SiteHeader } from '@/components/site-header'
import { WorkIndex } from '@/components/work-index'
import { getContactPage, getPage } from '@/lib/page-data'

export const metadata = {
  title: 'Work → Goodside',
}

export const dynamic = 'force-dynamic'

export default async function WorkPage() {
  const [page, home, contact] = await Promise.all([
    getPage('work'),
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
      <WorkIndex projects={page.workProjects ?? []} />
      <SiteFooter contact={contact} />
    </>
  )
}
