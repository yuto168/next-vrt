import { test } from '@playwright/test';

test.beforeEach(async ({ page }) => {
  await page.goto('/');
});

test('スクショを撮る', async ({ page }) => {
  await page.screenshot({ path: './directory_contains_actual_images/example.png', fullPage: true });
});