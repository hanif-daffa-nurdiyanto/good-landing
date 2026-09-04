import type { GlobalConfig } from 'payload'

import { paragraphFields, projectFields } from './pageFields'

export const Home: GlobalConfig = {
  slug: 'home',
  label: 'Home',
  access: {
    read: () => true,
  },
  fields: [
    {
      type: 'tabs',
      tabs: [
        {
          label: 'Hero',
          fields: [
            {
              name: 'heroLogoUpload',
              type: 'upload',
              relationTo: 'media',
            },
            {
              name: 'heroLogo',
              type: 'text',
              admin: {
                description: 'Fallback external URL. Upload image will be used first when set.',
              },
            },
            { name: 'heroHeading', type: 'text' },
            { name: 'heroCopy', type: 'textarea' },
          ],
        },
        {
          label: 'Marquee',
          fields: [
            {
              name: 'marqueeProjects',
              type: 'array',
              fields: projectFields(),
            },
          ],
        },
        {
          label: 'Manifesto',
          fields: [
            { name: 'manifestoTitle', type: 'text' },
            {
              name: 'manifestoVideoUpload',
              type: 'upload',
              relationTo: 'media',
            },
            {
              name: 'manifestoVideo',
              type: 'text',
              admin: {
                description: 'Fallback external URL. Upload video will be used first when set.',
              },
            },
            {
              name: 'manifestoParagraphs',
              type: 'array',
              fields: paragraphFields(),
            },
          ],
        },
        {
          label: 'Featured Work',
          fields: [
            { name: 'featuredTitle', type: 'text' },
            { name: 'featuredLinkLabel', type: 'text' },
            { name: 'featuredLinkHref', type: 'text' },
            {
              name: 'featuredProjects',
              type: 'array',
              fields: projectFields(),
            },
          ],
        },
      ],
    },
  ],
}
