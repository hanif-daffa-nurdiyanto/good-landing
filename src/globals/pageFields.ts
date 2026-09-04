import type { Field } from 'payload'

export const projectFields = (): Field[] => [
  { name: 'title', type: 'text', required: true },
  { name: 'description', type: 'textarea', required: true },
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
  { name: 'href', type: 'text', required: true },
  { name: 'color', type: 'text' },
  { name: 'status', type: 'text' },
]

export const imageLinkFields = (): Field[] => [
  { name: 'alt', type: 'text', required: true },
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
  { name: 'href', type: 'text' },
  { name: 'objectPosition', type: 'text' },
  { name: 'dark', type: 'checkbox' },
]

export const paragraphFields = (): Field[] => [
  { name: 'paragraph', type: 'textarea', required: true },
]

export const textItemFields = (): Field[] => [
  { name: 'item', type: 'text', required: true },
]

export const contactFields = (): Field[] => [
  { name: 'contactHeading', type: 'text' },
  { name: 'contactEmail', type: 'email' },
  {
    name: 'contactImageUpload',
    type: 'upload',
    relationTo: 'media',
  },
  {
    name: 'contactImage',
    type: 'text',
    admin: {
      description: 'Fallback external URL. Upload image will be used first when set.',
    },
  },
  { name: 'contactImageAlt', type: 'text' },
  { name: 'socialHeading', type: 'text' },
  {
    name: 'socialLinks',
    type: 'array',
    fields: [
      { name: 'label', type: 'text', required: true },
      { name: 'href', type: 'text', required: true },
    ],
  },
]

export const kickerTab = () => ({
  label: 'Kicker',
  fields: [
    { name: 'kickerTitle', type: 'text' },
    { name: 'kickerCopy', type: 'textarea' },
  ],
}) satisfies { label: string; fields: Field[] }
