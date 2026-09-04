import { Reveal } from './reveal'
import type { PageContent } from '@/lib/page-data'

type ManifestoSectionProps = {
  page: PageContent
}

export function ManifestoSection({ page }: ManifestoSectionProps) {
  return (
    <section className="border-line/70">
      <div className="mx-auto flex min-h-[70vh] w-fit flex-col justify-between px-[var(--site-pad)] py-8 text-center md:py-12">
        <Reveal className="mx-auto max-w-[150px]">
          <h2 className="font-serif text-2xl font-semibold leading-[0.96]">
            {page.manifestoTitle}
          </h2>
        </Reveal>

        <Reveal delay={120}>
          <video
            autoPlay
            muted
            loop
            playsInline
            className="mx-auto my-10 h-auto w-38"
          >
            <source
              src={page.manifestoVideo ?? ''}
              type="video/mp4"
            />
          </video>
        </Reveal>

        <Reveal className="mx-auto max-w-[300px] space-y-6 font-serif text-body-large font-[400] leading-[32px]" delay={180}>
          {(page.manifestoParagraphs ?? []).map((item) => (
            <p className="whitespace-pre-line" key={item.paragraph}>
              {item.paragraph}
            </p>
          ))}
        </Reveal>
      </div>
    </section>
  )
}
