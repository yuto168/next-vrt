import { test } from '@playwright/test';

test.beforeEach(async ({ page }) => {
  await page.goto('/');
});

test('スクショを撮る', async ({ page }) => {
  await page.screenshot({ path: './vrt/after/example.png', fullPage: true });
});