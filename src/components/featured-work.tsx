import Image from 'next/image'

import { Reveal } from './reveal'
import { featuredWork } from './site-data'

export function FeaturedWork() {
  return (
    <section
      className="border-b border-line/70 py-6 pb-32"
      id="featured-work"
    >
      <div className="mb-6 flex items-end justify-between gap-6 border-b-[0.5px] px-[var(--site-pad)] pb-2 text-xs uppercase">
        <h2 className="text-2xl">Featured Work</h2>

        <a
          className="underline! underline-offset-4 hover:text-slate-500!"
          href="/work"
        >
          See more work
        </a>
      </div>

      <div className="mx-[var(--site-pad)] grid gap-2 gap-y-8 overflow-hidden md:grid-cols-2">
        {featuredWork.map((project, index) => (
          <Reveal
            className="group bg-paper"
            delay={(index % 2) * 100}
            key={project.title}
          >
            <article>
              <div className="relative aspect-[4/3] overflow-hidden">
                <Image
                  alt=""
                  fill
                  sizes="(min-width: 768px) 50vw, 100vw"
                  className="h-full w-full object-cover transition duration-700 group-hover:scale-105"
                  src={project.image}
                />
              </div>

              <div className="gap-2 p-3 font-serif text-sm font-bold uppercase md:grid-cols-[0.75fr_1fr]">
                <h3 className="flex items-center gap-2">
                  <span className="inline-block origin-center transition-transform duration-300 ease-out group-hover:scale-[2]">
                    •
                  </span>

                  {project.title}
                </h3>

                <p className="normal-case italic leading-snug">
                  {project.description}
                </p>
              </div>
            </article>
          </Reveal>
        ))}
      </div>
    </section>
  )
}
