'use client'

import Image from 'next/image'
import Link from 'next/link'
import { usePathname } from 'next/navigation'
import { useEffect, useState } from 'react'

import { siteNavigation, socialLinks } from './site-data'
import type { PageContent } from '@/lib/page-data'

function isActivePath(pathname: string, href: string) {
  if (href === '/') {
    return pathname === '/'
  }

  return pathname === href || pathname.startsWith(`${href}/`)
}

type SiteHeaderProps = {
  contact: PageContent
  intro?: string | null
}

export function SiteHeader({ contact, intro }: SiteHeaderProps) {
  const pathname = usePathname()
  const [isMenuOpen, setIsMenuOpen] = useState(false)

  useEffect(() => {
    document.body.style.overflow = isMenuOpen ? 'hidden' : ''

    return () => {
      document.body.style.overflow = ''
    }
  }, [isMenuOpen])

  return (
    <>
      <header className="sticky top-0 z-50 border-b border-line/70 bg-paper/95 px-[var(--site-pad)] py-1 backdrop-blur">
      <div className="flex items-center justify-between py-4 md:hidden">
        <Link className="font-serif text-[2.6rem] font-bold leading-none" href="/">
          Goodside
        </Link>

        <button
          aria-expanded={isMenuOpen}
          aria-label="Open navigation menu"
          className="flex items-center gap-2 font-serif text-2xl uppercase leading-none"
          onClick={() => setIsMenuOpen(true)}
          type="button"
        >
          <span aria-hidden="true">•</span>
          <span>Menu</span>
        </button>
      </div>

      <nav aria-label="Primary navigation" className="hidden grid-cols-5 items-center text-xs uppercase md:grid">
        {siteNavigation.slice(0, 2).map((item) => {
          const isActive = isActivePath(pathname, item.href)

          return (
            <Link className="relative flex w-fit items-center gap-1 underline-offset-4 hover:underline after:absolute after:left-0 after:-bottom-1 after:h-px after:w-full after:origin-left after:scale-x-0 after:bg-current after:transition-transform after:duration-300 hover:after:scale-x-100" href={item.href} key={item.label}>
              {isActive ? <span aria-hidden="true">•</span> : null}
              <span>{item.label}</span>
            </Link>
          )
        })}

        <Link aria-label="Goodside home" className="mx-auto size-9" href="/">
          <Image
            alt=""
            className="h-full w-full animate-[spin_18s_linear_infinite]"
            height={72}
            src="https://www.goodside.studio/assets/goodside_sun.png"
            unoptimized
            width={72}
          />
        </Link>

        {siteNavigation.slice(2).map((item) => {
          const isActive = isActivePath(pathname, item.href)

          return (
            <Link className="relative ml-auto flex w-fit items-center gap-1 underline-offset-4 hover:underline after:absolute after:left-0 after:-bottom-1 after:h-px after:w-full after:origin-left after:scale-x-0 after:bg-current after:transition-transform after:duration-300 hover:after:scale-x-100" href={item.href} key={item.label}>
              {isActive ? <span aria-hidden="true">•</span> : null}
              <span>{item.label}</span>
            </Link>
          )
        })}
      </nav>

      </header>

      {isMenuOpen ? (
        <div className="fixed inset-0 z-[60] overflow-y-auto bg-paper md:hidden">
          <div className="border-b border-line/70 bg-[#ffffd6] px-[var(--site-pad)] py-6">
            <div className="flex items-center justify-between">
              <Link className="font-serif text-[2.6rem] font-bold leading-none" href="/">
                Goodside
              </Link>

              <button
                aria-label="Close navigation menu"
                className="flex items-center gap-2 font-serif text-2xl uppercase leading-none"
                onClick={() => setIsMenuOpen(false)}
                type="button"
              >
                <span aria-hidden="true">•</span>
                <span>Close</span>
              </button>
            </div>

            <p className="mt-8 max-w-[44rem] font-serif text-[1.75rem] leading-tight">
              {intro}
            </p>
          </div>

          <nav
            aria-label="Mobile navigation"
            className="flex flex-col items-center gap-10 border-b border-line/70 px-[var(--site-pad)] py-16 font-serif text-[3rem] uppercase leading-none"
          >
            {siteNavigation.map((item) => {
              const isActive = isActivePath(pathname, item.href)

              return (
                <Link
                  className={isActive ? 'text-line' : 'text-ink'}
                  href={item.href}
                  key={item.label}
                  onClick={() => setIsMenuOpen(false)}
                >
                  {item.label}
                </Link>
              )
            })}
          </nav>

          <div className="grid justify-items-center gap-10 border-b border-line/70 px-[var(--site-pad)] py-14 text-center font-serif">
            <div>
              <p className="mb-4 text-[1.9rem] italic leading-tight">
                {contact.contactHeading}
              </p>

              <a className="text-[2rem] leading-tight underline! underline-offset-4" href={`mailto:${contact.contactEmail}`}>
                {contact.contactEmail}
              </a>
            </div>

            <Image
              alt=""
              className="size-16 animate-[spin_18s_linear_infinite]"
              height={96}
              src="https://www.goodside.studio/assets/goodside_sun.png"
              unoptimized
              width={96}
            />

            <div>
              <p className="mb-6 text-[1.75rem] italic leading-tight">Follow along</p>
              <div className="flex flex-col items-center text-[1.9rem] leading-tight">
                {(contact.socialLinks ?? socialLinks).map((item) => (
                  <a
                    className="underline! underline-offset-4"
                    href={item.href}
                    key={item.label}
                    rel="noreferrer"
                    target="_blank"
                  >
                    {item.label === 'X' ? 'X (Twitter)' : item.label}
                  </a>
                ))}
              </div>
            </div>
          </div>
        </div>
      ) : null}
    </>
  )
}
