'use client'

import {
  type CSSProperties,
  type HTMLAttributes,
  type ReactNode,
  useEffect,
  useRef,
  useState,
} from 'react'

type RevealProps = {
  children: ReactNode
  className?: string
  delay?: number
  once?: boolean
} & HTMLAttributes<HTMLDivElement>

export function Reveal({
  children,
  className = '',
  delay = 0,
  once = true,
  ...props
}: RevealProps) {
  const ref = useRef<HTMLDivElement | null>(null)
  const [isVisible, setIsVisible] = useState(false)

  useEffect(() => {
    const node = ref.current

    if (!node) {
      return
    }

    const observer = new IntersectionObserver(
      ([entry]) => {
        if (entry.isIntersecting) {
          setIsVisible(true)

          if (once) {
            observer.unobserve(entry.target)
          }

          return
        }

        if (!once) {
          setIsVisible(false)
        }
      },
      {
        rootMargin: '0px 0px -12% 0px',
        threshold: 0.12,
      },
    )

    observer.observe(node)

    return () => observer.disconnect()
  }, [once])

  return (
    <div
      {...props}
      className={`reveal ${isVisible ? 'is-visible' : ''} ${className}`.trim()}
      ref={ref}
      style={{ ...props.style, '--reveal-delay': `${delay}ms` } as CSSProperties}
    >
      {children}
    </div>
  )
}
