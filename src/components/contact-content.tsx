import Image from 'next/image'

import { Reveal } from './reveal'
import { socialLinks } from './site-data'

export function ContactContent() {
  return (
    <section className="mt-48 px-[var(--site-pad)]">
      <div className="flex flex-col gap-12 items-center">
        <Reveal>
          <h1 className="font-serif text-2xl italic font-semibold leading-[32px] max-w-[200px] mx-auto text-center mb-2">
            For business inquiries, collaborations or hellos
          </h1>
          <a
            className="block font-serif text-3xl italic underline! underline-offset-10 text-center"
            href="mailto:hello@goodside.studio"
          >
            hello@goodside.studio
          </a>
        </Reveal>


        <Reveal delay={120}>
          <Image
            alt="Goodside Dandelion"
            className="mx-auto w-28 md:w-40"
            height={320}
            priority
            src="https://www.goodside.studio/assets/goodside_dandelion.png"
            width={320}
          />
        </Reveal>

        <Reveal className="space-y-10 text-center" delay={180}>
          
          <div>
            <p className="mb-4 text-xs uppercase">Follow along</p>
            <div className="flex flex-col flex-wrap gap-4 text-sm font-bold uppercase md:justify-end">
              {socialLinks.map((item) => (
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
