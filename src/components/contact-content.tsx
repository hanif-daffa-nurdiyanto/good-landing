import Image from 'next/image'

import { Reveal } from './reveal'
import type { PageContent } from '@/lib/page-data'

type ContactContentProps = {
  page: PageContent
}

export function ContactContent({ page }: ContactContentProps) {
  return (
    <section className="mt-48 px-(--site-pad)">
      <div className="flex flex-col gap-12 items-center">
        <Reveal>
          <h1 className="font-serif text-2xl italic font-semibold leading-8 max-w-50 mx-auto text-center mb-2">
            {page.contactHeading}
          </h1>
          <a
            className="block font-serif text-3xl italic underline! underline-offset-10 text-center"
            href={`mailto:${page.contactEmail}`}
          >
            {page.contactEmail}
          </a>
        </Reveal>


        <Reveal delay={120}>
          <Image
            alt={page.contactImageAlt ?? ''}
            className="mx-auto w-28 md:w-40"
            height={320}
            priority
            src={page.contactImage ?? ''}
            width={320}
          />
        </Reveal>

        <Reveal className="space-y-10 text-center" delay={180}>
          
          <div>
            <p className="mb-4 text-xs uppercase">{page.socialHeading}</p>
            <div className="flex flex-col flex-wrap gap-4 text-sm font-bold uppercase md:justify-end">
              {(page.socialLinks ?? []).map((item) => (
                <a
                  className="underline! underline-offset-4"
                  href={item.href}
                  key={item.label}
                  rel="noreferrer"
                  target="_blank"
                >
                  {item.label}
                </a>
              ))}
            </div>
          </div>
        </Reveal>
      </div>
    </section>
  )
}
