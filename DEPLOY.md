# Deployment Guide - Fix Navigation

## Problem
The book is published but navigation doesn't work - only README is shown.

## Solution
All missing chapter placeholders have been added. Now you need to rebuild and republish.

---

## Quick Fix (5 minutes)

### Step 1: Pull Latest Changes
```bash
cd AI-course-book
git pull origin main
```

### Step 2: Rebuild the Book
```bash
# Install/update Jupyter Book if needed
pip install -U jupyter-book

# Clean previous build
jupyter-book clean .

# Build fresh
jupyter-book build .
```

### Step 3: Deploy to GitHub Pages
```bash
# Install ghp-import if needed
pip install ghp-import

# Push to gh-pages branch
ghp-import -n -p -f _build/html
```

### Step 4: Wait 1-2 Minutes
GitHub Pages takes a moment to update. Then visit:
```
https://chebil.github.io/AI-course-book/
```

---

## What Was Fixed

### Problem
The `_toc.yml` referenced files that didn't exist:
- chapters/ch04_propositional.ipynb
- chapters/ch05_firstorder.ipynb  
- chapters/ch08_domain_architectures.ipynb
- chapters/ch09_unsupervised.ipynb
- chapters/ch10_reinforcement.ipynb
- chapters/ch11_pgm.ipynb
- chapters/ch12_knowledge_graphs.ipynb
- chapters/ch13_integration.ipynb
- All appendix files

### Solution
Created placeholder notebooks for all missing chapters with "Coming Soon" messages.

---

## Verify Navigation Works

After deployment, you should see:

### Left Sidebar Navigation:
```
├─ Part I - Deductive Reasoning
│   ├─ Chapter 1: Introduction
│   ├─ Chapter 2: Searching State Spaces (✅ Complete)
│   ├─ Chapter 3: Multiagent Search (✅ Complete)
│   ├─ Chapter 4: Propositional Logic (Coming Soon)
│   └─ Chapter 5: First-Order Logic (Coming Soon)
├─ Part II - Inductive Learning
│   ├─ Chapter 6: Machine Learning (✅ Complete)
│   ├─ Chapter 7: Neural Networks (✅ Complete)
│   ├─ Chapter 8: Domain Architectures (Coming Soon)
│   ├─ Chapter 9: Unsupervised Learning (Coming Soon)
│   └─ Chapter 10: Reinforcement Learning (Coming Soon)
└─ Part III - Integration
    ├─ Chapter 11: PGM (Coming Soon)
    ├─ Chapter 12: Knowledge Graphs (Coming Soon)
    └─ Chapter 13: Integration (Coming Soon)
```

---

## Testing Locally First

Before deploying, test locally:

```bash
# Build
jupyter-book build .

# Open in browser (Mac)
open _build/html/index.html

# Or (Linux)
xdg-open _build/html/index.html

# Or (Windows)
start _build/html/index.html
```

Check that:
1. ✅ Left sidebar shows all chapters
2. ✅ Clicking chapters navigates correctly
3. ✅ Complete chapters (2, 3, 6, 7) show full content
4. ✅ Placeholder chapters show "Coming Soon" message

---

## Alternative: GitHub Actions (Automated)

For automatic deployment on every push, create `.github/workflows/deploy.yml`:

```yaml
name: Deploy Jupyter Book

on:
  push:
    branches:
      - main

jobs:
  deploy-book:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v3
    
    - name: Setup Python
      uses: actions/setup-python@v4
      with:
        python-version: '3.9'
    
    - name: Install dependencies
      run: |
        pip install -r requirements.txt
    
    - name: Build book
      run: |
        jupyter-book build .
    
    - name: Deploy to GitHub Pages
      uses: peaceiris/actions-gh-pages@v3
      with:
        github_token: ${{ secrets.GITHUB_TOKEN }}
        publish_dir: ./_build/html
```

Then just `git push` and it auto-deploys!

---

## Troubleshooting

### Navigation Still Doesn't Work

1. **Check GitHub Pages settings:**
   - Go to: Settings → Pages
   - Source should be: `gh-pages` branch, `/ (root)`
   - Custom domain: Empty (unless you have one)

2. **Clear browser cache:**
   ```
   Ctrl+Shift+R (hard refresh)
   ```

3. **Check build errors:**
   ```bash
   jupyter-book build . --verbose
   ```

4. **Verify all files exist:**
   ```bash
   ls chapters/
   # Should show all ch01-ch13 files
   ```

### Build Fails

**Error: "File not found"**
- Check `_toc.yml` paths match actual files
- All paths should be relative: `chapters/ch01_introduction`
- No `.ipynb` extension in `_toc.yml`

**Error: "Notebook execution failed"**
- Add to `_config.yml`:
  ```yaml
  execute:
    execute_notebooks: "off"  # Don't execute on build
  ```

---

## Current Status

✅ **Fixed Issues:**
- All missing chapter files created
- Navigation structure complete
- TOC properly configured

✅ **Working Content:**
- Chapter 2: Searching State Spaces (40KB, complete)
- Chapter 3: Multiagent Search (20KB, complete)
- Chapter 6: Machine Learning (complete)
- Chapter 7: Neural Networks (complete)

🚧 **Placeholders (Coming Soon):**
- Chapters 1, 4, 5, 8, 9, 10, 11, 12, 13

---

## Next Steps After Navigation Works

1. **Polish Chapter 1** - Make introduction more welcoming
2. **Add Chapter 8** - CNNs and RNNs (most requested)
3. **Add Chapter 10** - Reinforcement Learning
4. **Remove placeholders** - As you complete each chapter

---

## Quick Commands Summary

```bash
# Pull latest
git pull

# Build locally
jupyter-book clean .
jupyter-book build .

# Test locally
open _build/html/index.html

# Deploy to web
ghp-import -n -p -f _build/html

# Wait 1-2 minutes, then visit:
# https://chebil.github.io/AI-course-book/
```

---

**That's it!** Your book should now have full working navigation. 🎉
