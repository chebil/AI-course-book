# Artificial Intelligence: A Textbook - Interactive Jupyter Book

[![Jupyter Book](https://img.shields.io/badge/Jupyter-Book-orange)](https://jupyterbook.org/)
[![Python](https://img.shields.io/badge/Python-3.9+-blue)](https://www.python.org/)
[![License](https://img.shields.io/badge/License-Educational-green)](LICENSE)

An interactive companion to "Artificial Intelligence: A Textbook" by Charu C. Aggarwal, with comprehensive Python implementations, examples, and exercises.

**Instructor**: Khalil Chebil  
**Course Repository**: [AI-course-book](https://github.com/chebil/AI-course-book)  
**Lecture Slides**: [AI-slides](https://github.com/chebil/AI-slides)

---

## 📚 Book Structure

This textbook integrates **deductive reasoning** and **inductive learning** approaches to AI:

### Part I: Deductive Reasoning (Chapters 1-5)

| Chapter | Title | Status | Key Topics |
|---------|-------|--------|------------|
| 1 | Introduction to AI | ✅ Template | Agents, Environments, AI Schools of Thought |
| 2 | **Searching State Spaces** | ✅ **COMPLETE** | BFS, DFS, A*, CSP, Local Search |
| 3 | Multiagent Search | 🚧 Planned | Game Playing, Minimax, Alpha-Beta |
| 4 | Propositional Logic | 🚧 Planned | Logic, Inference, Expert Systems |
| 5 | First-Order Logic | 🚧 Planned | Predicates, Quantifiers, Unification |

### Part II: Inductive Learning (Chapters 6-10)

| Chapter | Title | Status | Key Topics |
|---------|-------|--------|------------|
| 6 | Machine Learning | 🚧 Planned | Regression, Classification, SVMs |
| 7 | Neural Networks | 🚧 Planned | Backpropagation, Activation Functions |
| 8 | Domain Architectures | 🚧 Planned | CNNs, RNNs, LSTMs |
| 9 | Unsupervised Learning | 🚧 Planned | Clustering, PCA, Autoencoders |
| 10 | Reinforcement Learning | 🚧 Planned | Q-Learning, Policy Gradients, AlphaGo |

### Part III: Integration (Chapters 11-13)

| Chapter | Title | Status | Key Topics |
|---------|-------|--------|------------|
| 11 | Probabilistic Models | 🚧 Planned | Bayesian Networks, RBMs |
| 12 | Knowledge Graphs | 🚧 Planned | Graph Embeddings, Link Prediction |
| 13 | Integration | 🚧 Planned | Neuro-Symbolic AI, Transfer Learning |

---

## ✨ Chapter 2 Highlights (COMPLETE)

**Chapter 2: Searching State Spaces** is now fully implemented with:

### 🔍 Uninformed Search Algorithms
- ✅ **Breadth-First Search (BFS)** - Complete implementation with statistics
- ✅ **Depth-First Search (DFS)** - With depth limiting
- ✅ **Uniform Cost Search (UCS)** - Optimal pathfinding

### 🎯 Informed Search Algorithms  
- ✅ **Greedy Best-First Search** - Heuristic-guided
- ✅ **A* Search** - Optimal with admissible heuristics
- ✅ **Heuristic functions**: Manhattan distance, Misplaced tiles

### 🎲 Complete Case Studies
1. **8-Puzzle Problem**
   - Full implementation with state representation
   - Multiple heuristics (Manhattan, Misplaced tiles)
   - Algorithm comparison (BFS vs A*)
   - Visual display methods

2. **Constraint Satisfaction Problems (CSP)**
   - ✅ **Sudoku Solver** (from your slides example)
   - ✅ **N-Queens Problem** (all 92 solutions for 8-Queens)
   - ✅ **Graph Coloring** (vertex coloring with k colors)

### 🎯 Local Search Algorithms
- ✅ **Hill Climbing** - Basic local search
- ✅ **Simulated Annealing** - Escape local optima
- ✅ **N-Queens with Local Search** - Alternative approach

### 📊 Features
- **Performance metrics**: Nodes expanded, time, memory
- **Algorithm comparison** tables
- **Interactive examples** ready to run
- **Exercises** with clear learning objectives
- **Mathematical formulations** from textbook
- **Integration with your slides** (Sudoku, constraints)

---

## 🚀 Quick Start

### Installation

```bash
# Clone the repository
git clone https://github.com/chebil/AI-course-book.git
cd AI-course-book

# Install dependencies
pip install -r requirements.txt

# Build the book
jupyter-book build .
```

### Using the Book

1. **Online**: Visit the deployed book (GitHub Pages)
2. **Binder**: Click 🚀 rocket icon → "Binder" for live notebooks
3. **Google Colab**: Click 🚀 rocket icon → "Colab"
4. **Local**: Download notebooks and run in JupyterLab

---

## 💻 Interactive Features

- 📓 **Download Notebooks**: Every chapter as `.ipynb`
- 🚀 **Live Execution**: Run code in browser (Binder/Colab)
- 📊 **Visualizations**: Interactive plots and diagrams  
- 🎯 **Exercises**: Hands-on problems with solutions
- 🔗 **Course Integration**: Links to [AI-slides](https://github.com/chebil/AI-slides)

---

## 📝 Example Code

From Chapter 2 - Solving 8-Puzzle with A*:

```python
from search import EightPuzzle, a_star_search, manhattan_distance

# Create puzzle
initial = (1, 2, 3, 4, 0, 6, 7, 5, 8)
puzzle = EightPuzzle(initial)

# Solve with A*
solution, stats = a_star_search(puzzle, manhattan_distance)

print(f"Solution found in {stats['nodes_expanded']} nodes!")
print(f"Path length: {stats['path_length']}")
```

From Chapter 2 - Sudoku Solver:

```python
puzzle = [
    [5, 3, 0, 0, 7, 0, 0, 0, 0],
    [6, 0, 0, 1, 9, 5, 0, 0, 0],
    # ... (from your slides)
]

solution = solve_sudoku(puzzle)
# Prints complete solution!
```

---

## 🎯 Learning Path

### For Students

1. Read chapter content for theory
2. Run code cells to see algorithms in action
3. Modify parameters and observe changes
4. Complete exercises at chapter end
5. Download notebooks for offline practice

### For Instructors

- All materials are open-source and customizable
- Notebooks can be assigned as homework
- Solutions available in instructor repository
- Integrates with lecture slides from [AI-slides](https://github.com/chebil/AI-slides)

---

## 🛠️ Technology Stack

- **Jupyter Book**: Interactive book framework
- **MyST Markdown**: Enhanced markdown with directives
- **Python 3.9+**: Programming language
- **NumPy**: Numerical computing
- **Matplotlib**: Visualizations
- **Sphinx**: Documentation generator

---

## 📚 Reference

**Primary Textbook**:  
Aggarwal, C. C. (2021). *Artificial Intelligence: A Textbook*. Springer.  
ISBN: 978-3-030-72357-6

**Complementary Resources**:
- Russell & Norvig. *Artificial Intelligence: A Modern Approach* (4th ed.)
- Course slides: [AI-slides](https://github.com/chebil/AI-slides)

---

## 🤝 Contributing

Contributions are welcome! Please:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

---

## 📜 License

This educational material is provided for academic purposes. Please respect the copyright of:
- Original textbook by Charu C. Aggarwal
- Course materials by Khalil Chebil

---

## 📧 Contact

**Instructor**: Khalil Chebil  
**Institution**: Prince Sattam bin Abdulaziz University (PSAU)  
**GitHub**: [@chebil](https://github.com/chebil)

---

## 📈 Progress Tracker

- [x] Repository setup
- [x] Jupyter Book configuration  
- [x] Table of contents (13 chapters)
- [x] Chapter 1 template
- [x] **Chapter 2 COMPLETE** ✅
  - [x] All search algorithms
  - [x] 8-Puzzle with heuristics
  - [x] Sudoku solver
  - [x] N-Queens solver
  - [x] Graph coloring
  - [x] Local search (Hill Climbing, SA)
  - [x] Exercises and examples
- [ ] Chapter 3: Multiagent Search
- [ ] Chapters 4-5: Logic
- [ ] Chapters 6-10: Machine Learning
- [ ] Chapters 11-13: Advanced Topics
- [ ] Appendices

---

**Ready to start learning AI? Begin with [Chapter 1](chapters/ch01_introduction.ipynb)!** 🤖📚
