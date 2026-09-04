import type { GlobalConfig } from 'payload'

import { contactFields, kickerTab } from './pageFields'

export const Contact: GlobalConfig = {
  slug: 'contact',
  label: 'Contact',
  access: {
    read: () => true,
  },
  fields: [
    {
      type: 'tabs',
      tabs: [
        kickerTab(),
        {
          label: 'Contact',
          fields: contactFields(),
        },
      ],
    },
  ],
}
