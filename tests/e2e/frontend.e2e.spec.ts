import { expect, test } from '@playwright/test'

test.describe('Frontend', () => {
  test('can go on homepage', async ({ page }) => {
    await page.goto('http://localhost:3000')

    await expect(page).toHaveTitle(/Goodside/)

    const heading = page.locator('h1').first()

    await expect(heading).toHaveText('Where meaningful ideas become memorable brands')
  })

  test('can open primary pages', async ({ page }) => {
    const pages = [
      { path: '/work', text: 'Henri & Helene' },
      { path: '/about', text: 'We believe great brands can change the course of a business.' },
      { path: '/contact', text: 'hello@goodside.studio' },
    ]

    for (const item of pages) {
      await page.goto(`http://localhost:3000${item.path}`)
      await expect(page).toHaveTitle(/Goodside/)
      await expect(page.getByText(item.text).first()).toBeVisible()
    }
  })
})
