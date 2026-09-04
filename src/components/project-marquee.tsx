import Image from 'next/image'

import { Reveal } from './reveal'
import { projectHighlights } from './site-data'

export function ProjectMarquee() {
  return (
    <section className="overflow-hidden border-line/70 py-10 md:py-16">
      <div
        className="
          flex h-[24rem] w-max items-end gap-2
          px-[var(--site-pad)]
          animate-[project-marquee_30s_linear_infinite]
          hover:[animation-play-state:paused]
        "
      >
        {[...projectHighlights, ...projectHighlights].map(
          (project, index) => (
            <Reveal
              className="
                group relative
                w-[14rem] shrink-0 overflow-hidden
                transition-[width] duration-[500ms] ease-in-out
                hover:w-[17rem]
                md:w-[16vw]
                md:hover:w-[18vw]
              "
              delay={(index % projectHighlights.length) * 80}
              key={`${project.title}-${index}`}
            >
              <a className="block" href={project.href}>
                <div className="mb-3 space-y-1 text-left font-semibold opacity-0 transition-opacity duration-500 ease-in-out group-hover:opacity-100">
                  <h2 className="text-xs uppercase leading-tight">
                    • {project.title}
                  </h2>

                  <p className="font-serif text-xs italic leading-tight">
                    {project.description}
                  </p>
                </div>

                <Image
                  alt=""
                  className="block h-auto w-full"
                  height={520}
                  sizes="(min-width: 768px) 16vw, 14rem"
                  src={project.image}
                  width={420}
                />
              </a>
            </Reveal>
          ),
        )}
      </div>
    </section>
  )
}
