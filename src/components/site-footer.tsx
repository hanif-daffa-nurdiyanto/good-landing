import Image from 'next/image'

import type { PageContent } from '@/lib/page-data'

type SiteFooterProps = {
  contact: PageContent
}

export function SiteFooter({ contact }: SiteFooterProps) {
  return (
    <footer className="grid grid-cols-[1fr_auto_1fr] items-center gap-4 border-y border-line/70 px-[var(--site-pad)] py-6">
      <div className="flex flex-col gap-4">
        <p className="max-w-[200px] font-serif text-xl font-semibold leading-[32px] italic">
          {contact.contactHeading}
        </p>

        <a
          className="text-md underline! underline-offset-5"
          href={`mailto:${contact.contactEmail}`}
        >
          {contact.contactEmail}
        </a>
      </div>

      <Image
        alt={contact.contactImageAlt ?? ''}
        className="h-[60px] w-auto object-contain md:h-[100px]"
        height={320}
        src={contact.contactImage ?? ''}
        unoptimized
        width={320}
      />

      <div className="text-md flex flex-col flex-wrap items-end gap-x-5 gap-y-2 font-bold uppercase">
        {(contact.socialLinks ?? []).map((item) => (
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
    </footer>
  )
}
