import Image from 'next/image'

import { Reveal } from './reveal'
import type { PageContent } from '@/lib/page-data'

type HeroSectionProps = {
  page: PageContent
}

export function HeroSection({ page }: HeroSectionProps) {
  return (
    <section className="border-b border-line/70">
      <Reveal className="px-[var(--site-pad)] py-4">
        <Image
          alt="Goodside"
          className="w-full"
          height={385}
          priority
          src={page.heroLogo ?? ''}
          unoptimized
          width={2139}
        />
      </Reveal>

      <div className="grid gap-8 border-t border-line/70 px-[var(--site-pad)] py-2 md:grid-cols-[1.2fr_0.8fr] md:items-center">
        <Reveal>
          <h1 className="font-serif text-2xl font-semibold leading-[1.04] max-w-76.5">
            {page.heroHeading}
          </h1>
        </Reveal>
        <Reveal className="md:justify-self-end" delay={120}>
          <p className="text-sm leading-snug md:text-sm max-w-76.5">
            {page.heroCopy}
          </p>
        </Reveal>
      </div>
    </section>
  )
}
