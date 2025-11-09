# Quick Start Guide - Get Your Book Online in 5 Minutes! ⏱️

Follow these simple steps to get your AI Course Book live on GitHub Pages.

## Step 1: Clone the Repository 📥

```bash
git clone https://github.com/chebil/AI-course-book.git
cd AI-course-book
```

## Step 2: Copy Images from AI-slides 🖼️

### Option A: If you have AI-slides cloned locally

```bash
# Make the script executable
chmod +x copy_images.sh

# Run the script
./copy_images.sh
```

### Option B: Clone AI-slides first, then copy

```bash
# Clone AI-slides as a sibling directory
cd ..
git clone https://github.com/chebil/AI-slides.git
cd AI-course-book

# Copy images
cp -r ../AI-slides/images ./images
```

### Option C: Manual download (Windows users)

1. Download AI-slides repository: https://github.com/chebil/AI-slides/archive/refs/heads/main.zip
2. Extract the ZIP file
3. Copy the `images` folder to your `AI-course-book` directory

## Step 3: Push Images to GitHub 🚀

```bash
# Add the images
git add images/

# Commit
git commit -m "Add course images from AI-slides"

# Push to GitHub
git push origin main
```

⏳ **GitHub Actions will now automatically build your book!** (This takes about 2-3 minutes)

## Step 4: Enable GitHub Pages 🌐

1. **Go to your repository on GitHub:**
   https://github.com/chebil/AI-course-book

2. **Click on Settings** (top right)

3. **Click on Pages** (left sidebar)

4. **Under "Source", configure:**
   - **Deploy from a branch**
   - Branch: Select **`gh-pages`**
   - Folder: Select **`/ (root)`**

5. **Click Save**

6. **Wait 1-2 minutes**, then visit:
   **https://chebil.github.io/AI-course-book/**

🎉 **Your book is now live!**

---

## Troubleshooting 🔧

### ❌ GitHub Actions failing?

1. Go to the **Actions** tab in your repository
2. Click on the failed workflow
3. Check the error message
4. Common fixes:
   - Make sure `requirements.txt` is present
   - Ensure all chapter files exist
   - Verify `_config.yml` and `_toc.yml` are correct

### ❌ Images not showing?

1. Verify images directory exists:
   ```bash
   ls -la images/
   ```
2. Check that subdirectories exist:
   ```bash
   ls images/ch1/
   ls images/ch2/
   ls images/ch3/
   ls images/ch4/
   ```
3. If missing, re-run the copy images step

### ❌ 404 Error on GitHub Pages?

1. **Wait 2-5 minutes** - GitHub Pages deployment takes time
2. Check that the **gh-pages branch** was created:
   - Go to your repository
   - Click on the branch dropdown (should show "gh-pages")
3. Verify GitHub Pages settings are correct (Step 4 above)
4. Check the **Actions** tab for any failed deployments

### ❌ "gh-pages" branch doesn't exist?

1. The GitHub Action creates it automatically on first push
2. Make sure you pushed the images to trigger the action:
   ```bash
   git push origin main
   ```
3. Wait for the Action to complete (check Actions tab)
4. Refresh the Pages settings page

---

## What Happens Automatically? ⚙️

When you push to the main branch:

1. ✅ GitHub Actions workflow triggers
2. ✅ Python environment is set up
3. ✅ Dependencies are installed
4. ✅ Jupyter Book is built
5. ✅ HTML output is deployed to `gh-pages` branch
6. ✅ GitHub Pages serves your book

You can monitor this in the **Actions** tab of your repository.

---

## Next Steps After Deployment 🚀

### 1. Test Your Book

Visit: https://chebil.github.io/AI-course-book/

- Check all chapters load correctly
- Verify images display properly
- Test navigation and search
- Check Mermaid diagrams render

### 2. Customize Your Book

Edit `_config.yml` to:
- Change title and author
- Add a logo
- Customize theme colors

See [SETUP.md](SETUP.md) for detailed customization options.

### 3. Add More Content

- Create new chapter files
- Add them to `_toc.yml`
- Push to main - automatic rebuild!

### 4. Share Your Book

- Share the URL: https://chebil.github.io/AI-course-book/
- Add to your GitHub profile
- Link from course materials
- Share on social media

---

## Build Locally (Optional) 💻

If you want to preview changes before pushing:

```bash
# Install Jupyter Book
pip install -r requirements.txt

# Build the book
jupyter-book build .

# Open in browser
open _build/html/index.html  # Mac
xdg-open _build/html/index.html  # Linux
start _build/html/index.html  # Windows
```

---

## Support 💬

- **Questions?** Open an issue: https://github.com/chebil/AI-course-book/issues
- **Need help?** Email: khalil.chebil@insat.ucar.tn
- **Documentation:** See [SETUP.md](SETUP.md) for detailed instructions

---

## Checklist ✔️

Before sharing your book, make sure:

- [ ] Images are copied and pushed
- [ ] GitHub Actions workflow completed successfully
- [ ] GitHub Pages is enabled and configured
- [ ] Book is accessible at https://chebil.github.io/AI-course-book/
- [ ] All chapters load without errors
- [ ] Images display correctly
- [ ] Mermaid diagrams render properly
- [ ] Math equations display correctly

---

**That's it! Your AI Course Book is now live and automatically updating with every push!** 🎉📚

**Book URL:** https://chebil.github.io/AI-course-book/
