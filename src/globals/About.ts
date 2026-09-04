import type { GlobalConfig } from 'payload'

import { imageLinkFields, kickerTab, paragraphFields, textItemFields } from './pageFields'

export const About: GlobalConfig = {
  slug: 'about',
  label: 'About',
  access: {
    read: () => true,
  },
  fields: [
    {
      type: 'tabs',
      tabs: [
        kickerTab(),
        {
          label: 'Story',
          fields: [
            { name: 'aboutStory', type: 'textarea' },
            {
              name: 'aboutCollage',
              type: 'array',
              fields: [
                {
                  name: 'imageUpload',
                  type: 'upload',
                  relationTo: 'media',
                },
                {
                  name: 'image',
                  type: 'text',
                  admin: {
                    description: 'Fallback external URL. Upload image will be used first when set.',
                  },
                },
                { name: 'className', type: 'text', required: true },
              ],
            },
          ],
        },
        {
          label: 'Details',
          fields: [
            { name: 'howWeWorkTitle', type: 'text' },
            {
              name: 'howWeWorkParagraphs',
              type: 'array',
              fields: paragraphFields(),
            },
            {
              name: 'services',
              type: 'array',
              fields: textItemFields(),
            },
            {
              name: 'industries',
              type: 'array',
              fields: textItemFields(),
            },
          ],
        },
        {
          label: 'Lists',
          fields: [
            {
              name: 'clients',
              type: 'array',
              fields: textItemFields(),
            },
            {
              name: 'press',
              type: 'array',
              fields: textItemFields(),
            },
          ],
        },
        {
          label: 'Image Strip',
          fields: [
            { name: 'imageStripHeadingTop', type: 'text' },
            { name: 'imageStripHeadingEmphasis', type: 'text' },
            { name: 'imageStripHeadingBottom', type: 'text' },
            {
              name: 'aboutStrip',
              type: 'array',
              fields: imageLinkFields(),
            },
          ],
        },
      ],
    },
  ],
}
