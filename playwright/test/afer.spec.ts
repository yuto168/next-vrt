import { test } from "@playwright/test";

// ホーム画面
test("screenshots-home", async ({ page }) => {
  await page.screenshot({ path: "./vrt/after/home.png", fullPage: true });
});

// 著者追加
test("screenshots-author-add", async ({ page }) => {
  await page.goto("/author/add");
  await page.waitForSelector('input[id="input-author-form-name"]');
  await page.screenshot({ path: "./vrt/after/author-add.png", fullPage: true });
});

// 著者編集
test("screenshots-author-edit", async ({ page }) => {
  await page.goto("/author/edit?id=12");
  await page.waitForResponse(/show/);
  await page.waitForSelector('input[id="input-author-form-name"]');
  await page.screenshot({
    path: "./vrt/after/author-edit.png",
    fullPage: true,
  });
});

// 著者管理
test("screenshots-author", async ({ page }) => {
  await page.click("text=著者管理");
  await page.waitForResponse(/search/);
  await page.screenshot({
    path: "./vrt/after/author-index.png",
    fullPage: true,
  });
});

// 各テストはログインしてから実施する
test.beforeEach(async ({ page }) => {
  await page.goto("/login");
  await page.waitForSelector('input[id="input-login-name"]'); // ユーザー名入力欄が表示されるまで待機
  await page.locator('input[id="input-login-name"]').fill("test@example.com");
  await page.locator('input[id="input-login-password"]').fill("password");
  await page.locator('button[type="submit"]').click();

  // ページ遷移
  await page.waitForURL(/home/);
});
