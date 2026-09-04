import { Reveal } from './reveal'

type PageKickerProps = {
  title: string
  copy?: string
}

export function PageKicker({ copy, title }: PageKickerProps) {
  return (
    <section className="border-b border-line/70 px-[var(--site-pad)] py-1 md:py-2">
      <div className="flex flex-wrap gap-2 justify-between md:grid-cols-[1.15fr_0.85fr] items-center">
        <Reveal>
          <h1 className="max-w-5xl font-serif text-title leading-[0.96] font-bold">{title}</h1>
        </Reveal>
        {copy ? (
          <Reveal delay={120}>
            <p className="max-w-xl text-body-large leading-snug font-serif">{copy}</p>
          </Reveal>
        ) : null}
      </div>
    </section>
  )
}
