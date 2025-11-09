# Setup Guide for AI Course Book

This guide will help you set up, build, and deploy your Jupyter Book.

## 💻 Local Development

### Step 1: Clone and Install

```bash
# Clone the repository
git clone https://github.com/chebil/AI-course-book.git
cd AI-course-book

# Create a virtual environment (recommended)
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt
```

### Step 2: Copy Images

**Important**: The book references images from the AI-slides repository. You need to copy them:

#### Option A: Manual Copy
```bash
# If you have AI-slides cloned locally
cp -r /path/to/AI-slides/public/images ./images
```

#### Option B: Download from GitHub
```bash
# Clone the AI-slides repository
git clone https://github.com/chebil/AI-slides.git temp-slides

# Copy the images
cp -r temp-slides/public/images ./images

# Clean up
rm -rf temp-slides
```

### Step 3: Build the Book

```bash
# Build the Jupyter Book
jupyter-book build .

# Output will be in _build/html/
```

### Step 4: View Locally

```bash
# Open the built book in your browser
# On Mac:
open _build/html/index.html

# On Linux:
xdg-open _build/html/index.html

# On Windows:
start _build/html/index.html
```

## 🌐 Deploy to GitHub Pages

### Option 1: Automatic Deployment (Recommended)

The repository includes a GitHub Actions workflow that automatically builds and deploys your book when you push to the main branch.

**Enable GitHub Pages:**

1. Go to your repository on GitHub: https://github.com/chebil/AI-course-book
2. Click **Settings** > **Pages**
3. Under **Source**, select:
   - **Deploy from a branch**
   - Branch: **gh-pages**
   - Folder: **/ (root)**
4. Click **Save**

**Push images to trigger deployment:**

```bash
# Add the images directory
git add images/
git commit -m "Add course images"
git push origin main
```

The GitHub Action will automatically build and deploy your book. It will be available at:
**https://chebil.github.io/AI-course-book/**

### Option 2: Manual Deployment

```bash
# Install ghp-import
pip install ghp-import

# Build the book
jupyter-book build .

# Deploy to gh-pages branch
ghp-import -n -p -f _build/html
```

Then enable GitHub Pages as described above.

## 🔧 Customization

### Update Book Title and Author

Edit `_config.yml`:

```yaml
title: Your Book Title
author: Your Name
```

### Add a Logo

1. Add your logo image to the repository (e.g., `logo.png`)
2. Update `_config.yml`:

```yaml
logo: logo.png
```

### Change Theme Colors

Edit `_config.yml` and add:

```yaml
sphinx:
  config:
    html_theme_options:
      primary_color: "#2196f3"
      accent_color: "#ff9800"
```

### Add New Chapters

1. Create a new `.md` file (e.g., `chap7_myst.md`)
2. Add it to `_toc.yml`:

```yaml
chapters:
  - file: chap1_myst
    title: Introduction to AI
  # ... other chapters ...
  - file: chap7_myst
    title: Your New Chapter
```

3. Rebuild the book

## 📝 Editing Content

### MyST Markdown Syntax

**Admonitions:**
```markdown
```{note}
This is a note!
```

```{warning}
This is a warning!
```

```{tip}
This is a tip!
```
````

**Math Equations:**
```markdown
Inline: $E = mc^2$

Display:
$$
\int_0^\infty e^{-x^2} dx = \frac{\sqrt{\pi}}{2}
$$
```

**Mermaid Diagrams:**
````markdown
```{mermaid}
graph LR
    A[Start] --> B[Process]
    B --> C[End]
```
````

**Code Blocks:**
````markdown
```python
def hello_world():
    print("Hello, AI!")
```
````

## 🔍 Troubleshooting

### Issue: Images not displaying

**Solution**: Make sure you've copied the images directory from AI-slides:
```bash
cp -r /path/to/AI-slides/public/images ./images
```

### Issue: Mermaid diagrams not rendering

**Solution**: Ensure `sphinxcontrib-mermaid` is installed:
```bash
pip install sphinxcontrib-mermaid
```

### Issue: Build fails with "command not found"

**Solution**: Make sure Jupyter Book is installed:
```bash
pip install jupyter-book
```

### Issue: Math equations not rendering

**Solution**: Check that you're using proper LaTeX syntax:
- Inline: `$equation$`
- Display: `$$equation$$`

### Issue: GitHub Pages shows 404

**Solution**:
1. Check that GitHub Pages is enabled in repository settings
2. Verify the source is set to `gh-pages` branch
3. Wait a few minutes for deployment to complete
4. Check the Actions tab for build errors

## 📚 Additional Resources

### Jupyter Book
- [Official Documentation](https://jupyterbook.org/)
- [Gallery of Examples](https://executablebooks.org/en/latest/gallery.html)
- [Community Forum](https://github.com/executablebooks/jupyter-book/discussions)

### MyST Markdown
- [MyST Syntax Guide](https://myst-parser.readthedocs.io/en/latest/syntax/syntax.html)
- [MyST Cheat Sheet](https://jupyterbook.org/reference/cheatsheet.html)

### Mermaid Diagrams
- [Mermaid Documentation](https://mermaid.js.org/)
- [Live Editor](https://mermaid.live/)

## ✅ Checklist

Before deploying, make sure:

- [ ] All images are copied to the `images/` directory
- [ ] `_config.yml` has correct title and author
- [ ] `_toc.yml` includes all chapters
- [ ] Book builds without errors locally
- [ ] GitHub Pages is enabled in repository settings
- [ ] GitHub Actions workflow runs successfully

## 📞 Need Help?

If you encounter issues:

1. Check this setup guide
2. Review the [Jupyter Book documentation](https://jupyterbook.org/)
3. Open an issue on the [repository](https://github.com/chebil/AI-course-book/issues)
4. Contact: khalil.chebil@insat.ucar.tn

---

**Happy Building!** 🎉
