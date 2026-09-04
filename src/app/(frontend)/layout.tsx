import React from 'react'
import { Instrument_Serif, Manrope } from 'next/font/google'
import './globals.css'

const display = Instrument_Serif({
  subsets: ['latin'],
  variable: '--font-display',
  weight: ['400'],
})

const body = Manrope({
  subsets: ['latin'],
  variable: '--font-body',
})

export const metadata = {
  description:
    'Goodside is an independent brand design studio creating identities for products, places, and experiences.',
  title: 'Goodside → An independent brand design studio',
}

export default async function RootLayout(props: { children: React.ReactNode }) {
  const { children } = props

  return (
    <html lang="en" className={`${display.variable} ${body.variable}`}>
      <body>
        <main>{children}</main>
      </body>
    </html>
  )
}
