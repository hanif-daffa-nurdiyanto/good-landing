import { Reveal } from './reveal'

export function ManifestoSection() {
  return (
    <section className="border-line/70">
      <div className="mx-auto flex min-h-[70vh] w-fit flex-col justify-between px-[var(--site-pad)] py-8 text-center md:py-12">
        <Reveal className="mx-auto max-w-[150px]">
          <h2 className="font-serif text-2xl font-semibold leading-[0.96]">
            Let&apos;s imagine what&apos;s possible
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
              src="https://www.goodside.studio/assets/bloom_goodside.mp4"
              type="video/mp4"
            />
          </video>
        </Reveal>

        <Reveal className="mx-auto max-w-[300px] space-y-6 font-serif text-body-large font-[400] leading-[32px]" delay={180}>
          <p>
            The brands we remember have a way of making us see things differently.
            They turn everyday products into rituals, ordinary places into
            destinations, and new ideas into things people can&apos;t imagine
            living without.
          </p>

          <p>
            Through strategy, identity, design, and art direction, we get to the
            heart of what makes a business special and shape it into a brand
            that&apos;s unmistakably its own.
            <br />
            ****
          </p>
        </Reveal>
      </div>
    </section>
  )
}
