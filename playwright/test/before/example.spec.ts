import { test } from '@playwright/test';

test.beforeEach(async ({ page }) => {
  await page.goto('/');
});

test('スクショを撮る', async ({ page }) => {
  await page.screenshot({ path: './vrt/before/example.png', fullPage: true });
});