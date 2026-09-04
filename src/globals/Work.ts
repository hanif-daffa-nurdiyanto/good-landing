import type { GlobalConfig } from 'payload'

import { kickerTab, projectFields } from './pageFields'

export const Work: GlobalConfig = {
  slug: 'work',
  label: 'Work',
  access: {
    read: () => true,
  },
  fields: [
    {
      type: 'tabs',
      tabs: [
        kickerTab(),
        {
          label: 'Projects',
          fields: [
            {
              name: 'workProjects',
              type: 'array',
              fields: projectFields(),
            },
          ],
        },
      ],
    },
  ],
}
