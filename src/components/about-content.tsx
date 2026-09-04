import Image from 'next/image'
import Link from 'next/link'

import { Reveal } from './reveal'
import type { ImageStripItem, PageContent } from '@/lib/page-data'

function TextList({ items, title, underline=false }: { items: string[]; title: string, underline?: boolean }) {
  return (
    <Reveal className="border-line/70 pt-3 flex-1">
      <h3 className="mb-5 text-xs uppercase px-[var(--site-pad)]">{title}</h3>
      <hr className='mb-6'/>
      <ul className="space-y-1 font-serif text-body-large italic leading-tight px-[var(--site-pad)]">
        {items.map((item) => (
          <li className={underline ? 'hover:underline! cursor-pointer' : ''} key={item}>{item}</li>
        ))}
      </ul>
    </Reveal>
  )
}

type AboutProps = {
  page: PageContent
}

export function AboutStory({ page }: AboutProps) {
  return (
    <>
      <section className="">

        <div className="px-(--site-pad) py-6 md:py-12">
          <Reveal>
            <h1 className="whitespace-pre-line font-serif text-4xl leading-[1.4] font-semibold">{page.aboutStory}</h1>
          </Reveal>
        </div>
      </section>

      <section aria-hidden="true" className="relative mx-auto mb-10 aspect-794/473 w-[min(72vw,420px)] md:mb-14">
        {(page.aboutCollage ?? []).map((bird, index) => (
          <Reveal className={`absolute ${bird.className}`} delay={index * 120} key={bird.image}>
            <Image
              alt=""
              className="h-auto w-full"
              height={220}
              sizes="(min-width: 768px) 132px, 24vw"
              src={bird.image}
              unoptimized
              width={260}
            />
          </Reveal>
        ))}
      </section>
    </>
  )
}

export function AboutDetails({ page }: AboutProps) {
  return (
    <section className="flex flex-col md:flex-row  py-8 md:py-12 flex-wrap gap-y-16">
        <Reveal className="space-y-6 flex-1 pt-3">
          <p className="mb-5 text-xs uppercase px-(--site-pad)">{page.howWeWorkTitle}</p>
          <hr />
          {(page.howWeWorkParagraphs ?? []).map((item) => (
            <p className="max-w-4xl whitespace-pre-line text-body-large leading-snug px-(--site-pad)" key={item.paragraph}>
              {item.paragraph}
            </p>
          ))}
        </Reveal>
        <TextList items={(page.services ?? []).map((item) => item.item)} title="What we do" />
        <TextList items={(page.industries ?? []).map((item) => item.item)} title="Industries" />
    </section>
  )
}

export function AboutLists({ page }: AboutProps) {
  return (
    <section className="grid border-b gap-y-16 border-line/70 py-8 md:grid-cols-2 md:py-12">
      <TextList items={(page.clients ?? []).map((item) => item.item)} title="Who we've worked with" />
      <TextList items={(page.press ?? []).map((item) => item.item)} title="Press" underline />
    </section>
  )
}

export function AboutImageStrip({ page }: AboutProps) {
  const strip = page.aboutStrip ?? []

  return (
    <section className="overflow-hidden border-b border-line/70 bg-white px-(--site-pad) py-14 md:py-20">
      <div className="grid grid-cols-3 justify-between gap-x-[9vw] gap-y-16 md:grid-cols-7 md:gap-x-[6.8vw] md:gap-y-28">
        {strip.slice(0, 10).map((item, index) => (
          <WallTile index={index} item={item} key={`${item.image}-${index}`} />
        ))}

        <Reveal className="flex aspect-114/139 items-center justify-center text-center" delay={120}>
          <h2 className="font-serif text-[21px] leading-[1.05] md:text-lede">
            <span className="block">{page.imageStripHeadingTop}</span>
            <em className="block italic">{page.imageStripHeadingEmphasis}</em>
            <span className="block">{page.imageStripHeadingBottom}</span>
          </h2>
        </Reveal>

        {strip.slice(10).map((item, index) => (
          <WallTile index={index + 10} item={item} key={`${item.image}-${index + 10}`} />
        ))}
      </div>
    </section>
  )
}

function WallTile({
  index,
  item,
}: {
  index: number
  item: ImageStripItem
}) {
  const image = (
    <Reveal className={`relative aspect-114/139 overflow-hidden ${item.dark ? 'bg-black' : 'bg-warm'}`} delay={(index % 7) * 70}>
      <Image
        alt={item.alt}
        className={`transition duration-700 ${item.href ? 'group-hover:scale-105' : ''} ${item.dark ? 'object-contain p-[5%]' : 'object-cover'}`}
        fill
        priority={index < 7}
        sizes="(min-width: 768px) 8vw, 26vw"
        src={item.image}
        style={item.objectPosition ? { objectPosition: item.objectPosition } : undefined}
        unoptimized
      />
    </Reveal>
  )

  if (item.href) {
    return (
      <Link className="group block" href={item.href}>
        {image}
      </Link>
    )
  }

  return image
}
