import 'dotenv/config'

import { getPayload } from 'payload'

import { defaultPageContent } from './lib/page-data'
import config from './payload.config'

async function seed() {
  const payload = await getPayload({ config })
  const globals = payload as {
    updateGlobal: (args: {
      data: Partial<Omit<(typeof defaultPageContent)[number], 'slug' | 'title'>>
      slug: (typeof defaultPageContent)[number]['slug']
    }) => Promise<unknown>
  }

  for (const page of defaultPageContent) {
    const { slug, title: _title, ...data } = page
    void _title

    await globals.updateGlobal({
      data,
      slug,
    })
  }

  payload.logger.info(`Seeded ${defaultPageContent.length} globals`)
  process.exit(0)
}

seed().catch((error) => {
  console.error(error)
  process.exit(1)
})
