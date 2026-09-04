import Image from 'next/image'
import Link from 'next/link'

import { Reveal } from './reveal'
import { aboutCollage, aboutStrip, clients, industries, press, services } from './site-data'

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

export function AboutStory() {
  return (
    <>
      <section className="">

        <div className="px-[var(--site-pad)] py-6 md:py-12">
          <Reveal>
            <h1 className="font-serif text-4xl leading-[1.4] font-[600]">
              <i>We believe great brands can change the course of a business.</i> Every meaningful business begins with someone who cares deeply about what they&apos;re building. Our role is to uncover what makes it worth believing in, then give that idea a distinct expression. Through strategy, identity, design, and art direction, we create brands with the character and craft to stand the test of time.
            </h1>
          </Reveal>
        </div>
      </section>

      <section aria-hidden="true" className="relative mx-auto mb-10 aspect-[794/473] w-[min(72vw,420px)] md:mb-14">
        {aboutCollage.map((bird, index) => (
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

export function AboutDetails() {
  return (
    <section className="flex flex-col md:flex-row  py-8 md:py-12 flex-wrap gap-y-[64px]">
        <Reveal className="space-y-6 flex-1 pt-3">
          <p className="mb-5 text-xs uppercase px-[var(--site-pad)]">How we work</p>
          <hr />
          <p className="max-w-2xl text-body-large leading-snug px-[var(--site-pad)]">
            We work closely with founders and teams at defining moments, from ambitious new ventures
            to thoughtful reinventions. The process is hands-on, direct, and built around finding the
            strongest expression of the business behind the brand.
          </p>
          <p className="max-w-4xl text-body-large leading-snug px-[var(--site-pad)]">
            Goodside is led by brand designer and creative director Jessica Strelioff, with a trusted
            network of specialists brought in as each project requires.
          </p>
        </Reveal>
        <TextList items={services} title="What we do" />
        <TextList items={industries} title="Industries" />
    </section>
  )
}

export function AboutLists() {
  return (
    <section className="grid border-b gap-y-[64px] border-line/70 py-8 md:grid-cols-2 md:py-12">
      <TextList items={clients} title="Who we've worked with" />
      <TextList items={press} title="Press" underline />
    </section>
  )
}

export function AboutImageStrip() {
  return (
    <section className="overflow-hidden border-b border-line/70 bg-white px-[var(--site-pad)] py-14 md:py-20">
      <div className="grid grid-cols-3 justify-between gap-x-[9vw] gap-y-16 md:grid-cols-7 md:gap-x-[6.8vw] md:gap-y-28">
        {aboutStrip.slice(0, 10).map((item, index) => (
          <WallTile index={index} item={item} key={`${item.image}-${index}`} />
        ))}

        <Reveal className="flex aspect-[114/139] items-center justify-center text-center" delay={120}>
          <h2 className="font-serif text-[21px] leading-[1.05] md:text-lede">
            <span className="block">Where</span>
            <em className="block italic">great brands</em>
            <span className="block">begin</span>
          </h2>
        </Reveal>

        {aboutStrip.slice(10).map((item, index) => (
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
  item: (typeof aboutStrip)[number]
}) {
  const image = (
    <Reveal className={`relative aspect-[114/139] overflow-hidden ${item.dark ? 'bg-black' : 'bg-warm'}`} delay={(index % 7) * 70}>
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
