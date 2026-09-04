import Image from 'next/image'
import Link from 'next/link'

import { Reveal } from './reveal'
import { workProjects } from './site-data'

export function WorkIndex() {
  return (
    <section className="px-[var(--site-pad)] py-6">
      <div className="grid gap-x-2 gap-y-10 md:grid-cols-2 lg:grid-cols-3">
        {workProjects.map((project, index) => (
          <Reveal
            className="group block"
            delay={(index % 3) * 90}
            key={`${project.title}-${index}`}
          >
            <Link href={project.href}>
              <div className="relative aspect-[4/3] overflow-hidden bg-warm">
                <Image
                  alt=""
                  className="object-cover transition duration-700 group-hover:scale-105"
                  fill
                  priority={index < 6}
                  sizes="(min-width: 1024px) 33vw, (min-width: 768px) 50vw, 100vw"
                  src={project.image}
                />
                {'status' in project ? (
                  <span className="absolute right-3 top-3 bg-paper px-2 py-1 text-xs uppercase">
                    {project.status}
                  </span>
                ) : null}
              </div>

              <div className="flex justify-between px-2 gap-1 border-b border-line/70 py-3 font-serif text-sm font-bold uppercase md:grid-cols-[0.75fr_1fr]">
                <h2 className="flex items-center gap-2">
                  <span className="inline-block origin-center transition-transform duration-300 group-hover:scale-[2]">
                    •
                  </span>
                  {project.title}
                </h2>
                <p className="normal-case italic leading-snug">{project.description}</p>
              </div>
            </Link>
          </Reveal>
        ))}
      </div>
    </section>
  )
}
