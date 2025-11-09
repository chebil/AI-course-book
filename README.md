# AI Course Book 📚

[![Jupyter Book](https://img.shields.io/badge/Jupyter-Book-orange?logo=jupyter)](https://jupyterbook.org/)
[![MyST](https://img.shields.io/badge/MyST-Markdown-blue)](https://myst-parser.readthedocs.io/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A comprehensive **Artificial Intelligence course** presented as an interactive Jupyter Book. This book covers fundamental AI concepts, search algorithms, multi-agent systems, and logical reasoning.

## 📖 Table of Contents

1. **[Introduction to Artificial Intelligence](chap1_myst.md)**
   - What is AI and intelligence?
   - Historical roots and timeline
   - AI subfields and applications
   - Phenomenal vs Biological approaches

2. **[Important Concepts in AI](chap2_myst.md)**
   - Agents and environments
   - Constraint Satisfaction Problems (CSP)
   - Deductive vs Inductive reasoning
   - Machine learning fundamentals

3. **[Searching State Spaces](chap3_myst.md)**
   - State space representation
   - Uninformed search (DFS, BFS, UCS)
   - Informed search (Best-First, A*)
   - Local search algorithms (Hill Climbing, Tabu Search, Simulated Annealing, Genetic Algorithms)

4. **[Multiagent Search](chap4_myst.md)**
   - Multiagent environments
   - AND-OR search trees
   - Minimax algorithm
   - Alpha-Beta pruning
   - Monte Carlo Tree Search (MCTS)

5. **[Propositional Logic](chap5_myst.md)**
   - Logical operators and truth tables
   - Laws of logic
   - Tautologies and satisfiability
   - Forward and backward chaining
   - Expert systems

6. **[First-Order Logic](chap6_myst.md)**
   - Predicates and quantifiers
   - Functions in FOL
   - Knowledge bases
   - Substitution and unification
   - Comparison with propositional logic

## 🚀 Quick Start

### Prerequisites

- Python 3.8 or higher
- pip package manager

### Installation

```bash
# Clone the repository
git clone https://github.com/chebil/AI-course-book.git
cd AI-course-book

# Install dependencies
pip install -r requirements.txt
```

### Building the Book

```bash
# Build the Jupyter Book
jupyter-book build .

# The HTML output will be in _build/html/
# Open _build/html/index.html in your browser
```

### Cleaning Build Files

```bash
jupyter-book clean .
```

## 🌐 Publishing to GitHub Pages

Publish this book online with GitHub Pages:

```bash
# Install ghp-import
pip install ghp-import

# Build the book
jupyter-book build .

# Publish to GitHub Pages
ghp-import -n -p -f _build/html
```

Your book will be available at: `https://chebil.github.io/AI-course-book/`

## 📂 Repository Structure

```
AI-course-book/
├── _config.yml           # Jupyter Book configuration
├── _toc.yml             # Table of contents
├── intro.md             # Landing page
├── chap1_myst.md        # Chapter 1: Introduction to AI
├── chap2_myst.md        # Chapter 2: Important Concepts
├── chap3_myst.md        # Chapter 3: Searching State Spaces
├── chap4_myst.md        # Chapter 4: Multiagent Search
├── chap5_myst.md        # Chapter 5: Propositional Logic
├── chap6_myst.md        # Chapter 6: First-Order Logic
├── images/              # Image assets (copy from AI-slides/public/images)
├── requirements.txt     # Python dependencies
└── README.md            # This file
```

## 🎨 Features

- ✅ **Interactive Mermaid Diagrams**: Visual representations of concepts and algorithms
- ✅ **Mathematical Equations**: Full LaTeX support via MyST markdown
- ✅ **Code Examples**: Python implementations with syntax highlighting
- ✅ **Responsive Design**: Works on desktop, tablet, and mobile
- ✅ **Search Functionality**: Built-in search across all chapters
- ✅ **Dark/Light Mode**: Toggle between themes
- ✅ **GitHub Integration**: Direct links to source files

## 🖼️ Images Setup

**Important**: The book references images from the original slides repository. To display all images correctly:

### Option 1: Copy images from AI-slides repository

```bash
# If you have the AI-slides repository cloned
cp -r ../AI-slides/public/images ./images
```

### Option 2: Use symbolic link (Unix/Mac)

```bash
ln -s ../AI-slides/public/images ./images
```

### Required image directories:
- `images/ch1/` - Chapter 1 images
- `images/ch2/` - Chapter 2 images  
- `images/ch3/` - Chapter 3 images
- `images/ch4/` - Chapter 4 images

## 📝 MyST Markdown Features

This book uses MyST (Markedly Structured Text) markdown, which provides:

- **Admonitions**: Notes, warnings, tips, and more
- **Figures and Images**: With captions and references
- **Cross-references**: Link between sections and chapters
- **Mermaid Diagrams**: Flowcharts, graphs, and timelines
- **Math Support**: Inline and display equations using LaTeX
- **Code Blocks**: With line numbering and highlighting

## 🔗 Related Resources

- **Original Slides**: [AI-slides repository](https://github.com/chebil/AI-slides) (Slidev format)
- **Jupyter Book Documentation**: [jupyterbook.org](https://jupyterbook.org/)
- **MyST Markdown Guide**: [myst-parser.readthedocs.io](https://myst-parser.readthedocs.io/)
- **Mermaid Documentation**: [mermaid.js.org](https://mermaid.js.org/)

## 📚 Course Topics Covered

### AI Fundamentals
- Intelligence and AI definitions
- Historical development
- Current applications and future trends

### Search Algorithms
- Uninformed search (DFS, BFS, UCS, Bidirectional)
- Informed search (Best-First, A*)
- Local search (Hill Climbing, Simulated Annealing, Genetic Algorithms)

### Problem Solving
- Constraint Satisfaction Problems
- 8-Queens, Sudoku, TSP
- State space representation

### Multi-Agent Systems
- Adversarial search
- Game theory
- Minimax and Alpha-Beta pruning
- Monte Carlo Tree Search

### Logic and Reasoning
- Propositional logic
- First-order logic
- Theorem proving
- Expert systems
- Forward and backward chaining

## 👥 Target Audience

- **Students**: Undergraduate/graduate AI courses
- **Educators**: Teaching materials for AI courses
- **Practitioners**: Reference for AI algorithms and techniques
- **Researchers**: Foundation for advanced AI topics

## 🤝 Contributing

Contributions are welcome! Please feel free to:
- Report issues or bugs
- Suggest improvements or new content
- Add examples or exercises
- Fix typos or errors
- Improve documentation

### How to Contribute

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/improvement`)
3. Make your changes
4. Commit your changes (`git commit -am 'Add new feature'`)
5. Push to the branch (`git push origin feature/improvement`)
6. Create a Pull Request

## 📧 Contact

**Author**: Khalil Chebil  
**Email**: khalil.chebil@insat.ucar.tn  
**GitHub**: [@chebil](https://github.com/chebil)  
**Institution**: PSAU (Prince Sattam bin Abdulaziz University)

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🙏 Acknowledgments

- Built with [Jupyter Book](https://jupyterbook.org/)
- Converted from [Slidev](https://sli.dev/) presentations
- Uses [MyST Markdown](https://myst-parser.readthedocs.io/) for rich content
- Diagrams created with [Mermaid](https://mermaid.js.org/)
- Hosted on [GitHub](https://github.com/)

---

**⭐ Star this repository** if you find it helpful!

**Created**: November 2025  
**Last Updated**: November 2025  
**Version**: 1.0.0
