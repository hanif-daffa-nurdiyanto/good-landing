import { getPayload } from 'payload'

import {
  aboutCollage,
  aboutStrip,
  clients,
  featuredWork,
  industries,
  press,
  projectHighlights,
  services,
  socialLinks,
  workProjects,
} from '../components/site-data'
import config from '../payload.config'

type MediaUpload =
  | number
  | string
  | {
      url?: string | null
    }
  | null

export type ProjectCard = {
  title: string
  description: string
  image: string
  imageUpload?: MediaUpload
  href: string
  color?: string | null
  status?: string | null
}

export type TextItem = {
  item: string
}

export type CollageItem = {
  image: string
  imageUpload?: MediaUpload
  className: string
}

export type ImageStripItem = {
  alt: string
  image: string
  imageUpload?: MediaUpload
  href?: string | null
  objectPosition?: string | null
  dark?: boolean | null
}

export type SocialLink = {
  label: string
  href: string
}

export type PageContent = {
  title: string
  slug: 'home' | 'work' | 'about' | 'contact'
  kickerTitle?: string | null
  kickerCopy?: string | null
  heroLogoUpload?: MediaUpload
  heroLogo?: string | null
  heroHeading?: string | null
  heroCopy?: string | null
  marqueeProjects?: ProjectCard[] | null
  manifestoTitle?: string | null
  manifestoVideoUpload?: MediaUpload
  manifestoVideo?: string | null
  manifestoParagraphs?: { paragraph: string }[] | null
  featuredTitle?: string | null
  featuredLinkLabel?: string | null
  featuredLinkHref?: string | null
  featuredProjects?: ProjectCard[] | null
  workProjects?: ProjectCard[] | null
  aboutStory?: string | null
  aboutCollage?: CollageItem[] | null
  howWeWorkTitle?: string | null
  howWeWorkParagraphs?: { paragraph: string }[] | null
  services?: TextItem[] | null
  industries?: TextItem[] | null
  clients?: TextItem[] | null
  press?: TextItem[] | null
  imageStripHeadingTop?: string | null
  imageStripHeadingEmphasis?: string | null
  imageStripHeadingBottom?: string | null
  aboutStrip?: ImageStripItem[] | null
  contactHeading?: string | null
  contactEmail?: string | null
  contactImageUpload?: MediaUpload
  contactImage?: string | null
  contactImageAlt?: string | null
  socialHeading?: string | null
  socialLinks?: SocialLink[] | null
}

const sharedKickerCopy =
  'Selected identities for restaurants, venture firms, wellness products, climate tools, cultural places, and teams building what comes next.'

const textItems = (items: string[]) => items.map((item) => ({ item }))

export const defaultPageContent: PageContent[] = [
  {
    title: 'Home',
    slug: 'home',
    heroLogo: 'https://www.goodside.studio/assets/Goodside.svg',
    heroHeading: 'Where meaningful ideas become memorable brands',
    heroCopy:
      'Goodside is an independent brand design studio creating identities for the products, places, and experiences people fall in love with.',
    marqueeProjects: projectHighlights,
    manifestoTitle: "Let's imagine what's possible",
    manifestoVideo: 'https://www.goodside.studio/assets/bloom_goodside.mp4',
    manifestoParagraphs: [
      {
        paragraph:
          "The brands we remember have a way of making us see things differently. They turn everyday products into rituals, ordinary places into destinations, and new ideas into things people can't imagine living without.",
      },
      {
        paragraph:
          "Through strategy, identity, design, and art direction, we get to the heart of what makes a business special and shape it into a brand that's unmistakably its own.\n****",
      },
    ],
    featuredTitle: 'Featured Work',
    featuredLinkLabel: 'See more work',
    featuredLinkHref: '/work',
    featuredProjects: featuredWork,
  },
  {
    title: 'Work',
    slug: 'work',
    kickerTitle: 'Goodside',
    kickerCopy: sharedKickerCopy,
    workProjects,
  },
  {
    title: 'About',
    slug: 'about',
    kickerTitle: 'Goodside',
    kickerCopy: sharedKickerCopy,
    aboutStory:
      "We believe great brands can change the course of a business. Every meaningful business begins with someone who cares deeply about what they're building. Our role is to uncover what makes it worth believing in, then give that idea a distinct expression. Through strategy, identity, design, and art direction, we create brands with the character and craft to stand the test of time.",
    aboutCollage,
    howWeWorkTitle: 'How we work',
    howWeWorkParagraphs: [
      {
        paragraph:
          'We work closely with founders and teams at defining moments, from ambitious new ventures to thoughtful reinventions. The process is hands-on, direct, and built around finding the strongest expression of the business behind the brand.',
      },
      {
        paragraph:
          'Goodside is led by brand designer and creative director Jessica Strelioff, with a trusted network of specialists brought in as each project requires.',
      },
    ],
    services: textItems(services),
    industries: textItems(industries),
    clients: textItems(clients),
    press: textItems(press),
    imageStripHeadingTop: 'Where',
    imageStripHeadingEmphasis: 'great brands',
    imageStripHeadingBottom: 'begin',
    aboutStrip,
  },
  {
    title: 'Contact',
    slug: 'contact',
    kickerTitle: 'Goodside',
    kickerCopy: sharedKickerCopy,
    contactHeading: 'For business inquiries, collaborations or hellos',
    contactEmail: 'hello@goodside.studio',
    contactImage: 'https://www.goodside.studio/assets/goodside_dandelion.png',
    contactImageAlt: 'Goodside Dandelion',
    socialHeading: 'Follow along',
    socialLinks,
  },
]

export function getDefaultPage(slug: PageContent['slug']) {
  return defaultPageContent.find((page) => page.slug === slug) as PageContent
}

function getUploadUrl(upload: MediaUpload | undefined) {
  if (typeof upload === 'object' && upload?.url) {
    return upload.url
  }

  return undefined
}

function resolveAsset(upload: MediaUpload | undefined, fallback: string | null | undefined) {
  return getUploadUrl(upload) ?? fallback
}

function resolveProjects(projects: ProjectCard[] | null | undefined) {
  return projects?.map((project) => ({
    ...project,
    image: resolveAsset(project.imageUpload, project.image) ?? '',
  }))
}

function resolveCollage(items: CollageItem[] | null | undefined) {
  return items?.map((item) => ({
    ...item,
    image: resolveAsset(item.imageUpload, item.image) ?? '',
  }))
}

function resolveImageStrip(items: ImageStripItem[] | null | undefined) {
  return items?.map((item) => ({
    ...item,
    image: resolveAsset(item.imageUpload, item.image) ?? '',
  }))
}

function mergeWithDefault(page: Partial<PageContent>, fallback: PageContent): PageContent {
  const merged = {
    ...fallback,
    ...page,
    heroLogo: resolveAsset(page.heroLogoUpload, page.heroLogo || fallback.heroLogo),
    manifestoVideo: page.manifestoVideo || fallback.manifestoVideo,
    contactImage: resolveAsset(page.contactImageUpload, page.contactImage || fallback.contactImage),
    marqueeProjects: resolveProjects(page.marqueeProjects ?? fallback.marqueeProjects),
    manifestoParagraphs: page.manifestoParagraphs ?? fallback.manifestoParagraphs,
    featuredProjects: resolveProjects(page.featuredProjects ?? fallback.featuredProjects),
    workProjects: resolveProjects(page.workProjects ?? fallback.workProjects),
    aboutCollage: resolveCollage(page.aboutCollage ?? fallback.aboutCollage),
    howWeWorkParagraphs: page.howWeWorkParagraphs ?? fallback.howWeWorkParagraphs,
    services: page.services ?? fallback.services,
    industries: page.industries ?? fallback.industries,
    clients: page.clients ?? fallback.clients,
    press: page.press ?? fallback.press,
    aboutStrip: resolveImageStrip(page.aboutStrip ?? fallback.aboutStrip),
    socialLinks: page.socialLinks ?? fallback.socialLinks,
  }

  return {
    ...merged,
    manifestoVideo: resolveAsset(page.manifestoVideoUpload, merged.manifestoVideo),
  }
}

export async function getPage(slug: PageContent['slug']): Promise<PageContent> {
  const fallback = getDefaultPage(slug)

  try {
    const payload = await getPayload({ config })
    const globals = payload as {
      findGlobal: (args: { depth?: number; slug: PageContent['slug'] }) => Promise<Partial<PageContent>>
    }
    const page = await globals.findGlobal({
      depth: 1,
      slug,
    })

    return mergeWithDefault(page, fallback)
  } catch {
    return fallback
  }
}

export async function getContactPage() {
  return getPage('contact')
}
