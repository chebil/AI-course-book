# Artificial Intelligence: A Textbook - Interactive Jupyter Book

[![Jupyter Book](https://img.shields.io/badge/Jupyter-Book-orange)](https://jupyterbook.org/)
[![Python](https://img.shields.io/badge/Python-3.9+-blue)](https://www.python.org/)
[![License](https://img.shields.io/badge/License-Educational-green)](LICENSE)
[![Enhancement Phase 1](https://img.shields.io/badge/Enhancement-Phase%201%20Complete-success)](ENHANCEMENT_SUMMARY.md)

An interactive companion to "Artificial Intelligence: A Textbook" by Charu C. Aggarwal, with comprehensive Python implementations, examples, and hands-on lab exercises.

**Instructor**: Dr. Khalil Chebil  
**Institution**: Prince Sattam bin Abdulaziz University (PSAU)  
**Course Repository**: [AI-course-book](https://github.com/chebil/AI-course-book)  
**Lecture Slides**: [AI-slides](https://github.com/chebil/AI-slides)

---

## ✨ What's New - December 2025

### ✅ Completed Enhancements

- **Repository Cleanup**: Removed duplicate files for cleaner structure
- **Lab Notebooks Added**: Comprehensive hands-on exercises for Chapters 1-3
- **Enhanced Documentation**: New [ENHANCEMENT_SUMMARY.md](ENHANCEMENT_SUMMARY.md) with roadmap
- **Improved TOC**: Updated myst.yml to include lab exercises

### 🎓 New Lab Exercises

Each lab includes:
- 5+ progressive difficulty exercises
- Skeleton code with TODO comments
- Test cases and validation
- Performance benchmarking
- Visualization templates
- Challenge problems
- Discussion questions

---

## 📚 Book Structure

This textbook integrates **deductive reasoning** and **inductive learning** approaches to AI:

### Part I: Deductive Reasoning (Chapters 1-5)

| Chapter | Theory | Implementation | Lab | Status |
|---------|--------|----------------|-----|--------|
| 1 | Introduction to AI | ✅ Complete | ✅ **NEW** | ✅ Ready |
| 2 | **Searching State Spaces** | ✅ Complete | ✅ **NEW** | ✅ **COMPLETE** |
| 3 | Multiagent Search | ✅ Complete | 🚧 Basic | ✅ **NEW** Lab |
| 4 | Propositional Logic | 🚧 Planned | 🚧 Thin | 📑 Planned |
| 5 | First-Order Logic | 🚧 Planned | 🚧 Thin | 📑 Planned |

**Chapter 1 Lab Topics**: Simple/Model-Based/Goal-Based/Utility-Based Agents, Learning Agent  
**Chapter 2 Lab Topics**: Romania Pathfinding, 8-Puzzle, N-Queens, Hill Climbing, Performance Analysis  
**Chapter 3 Lab Topics**: Minimax, Alpha-Beta, Connect Four, MCTS, Algorithm Tournament

### Part II: Inductive Learning (Chapters 6-10)

| Chapter | Theory | Implementation | Lab | Status |
|---------|--------|----------------|-----|--------|
| 6 | Machine Learning | ✅ Complete | 🚧 Thin | 📑 Planned |
| 7 | Neural Networks | 🚧 Thin | 🚧 Thin | 📑 Planned |
| 8 | Domain Architectures | ✅ Complete | 🚦 Basic | 📑 Planned |
| 9 | Unsupervised Learning | 🚧 Thin | 🚧 Thin | 📑 Planned |
| 10 | Reinforcement Learning | 🚧 Thin | 🚧 Thin | 📑 Planned |

### Part III: Integration (Chapters 11-13)

| Chapter | Theory | Implementation | Lab | Status |
|---------|--------|----------------|-----|--------|
| 11 | Probabilistic Models | ✅ Complete | 🚧 Basic | 📑 Planned |
| 12 | Knowledge Graphs | ✅ Complete | 🚧 Basic | 📑 Planned |
| 13 | Integration | 🚧 Planned | 🚧 Basic | 📑 Planned |

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

### For Students

- 📓 **Download Notebooks**: Every chapter as `.ipynb`
- 🚀 **Live Execution**: Run code in browser (Binder/Colab)
- 📊 **Visualizations**: Interactive plots and diagrams  
- 🎯 **Exercises**: Hands-on problems with skeleton code
- ✅ **Lab Notebooks**: Progressive difficulty exercises with solutions
- 🔗 **Course Integration**: Links to [AI-slides](https://github.com/chebil/AI-slides)

### For Instructors

- All materials are open-source and customizable
- Lab notebooks can be assigned as homework
- Solutions structure provided (implement full solutions separately)
- Integrates with lecture slides from [AI-slides](https://github.com/chebil/AI-slides)
- Performance benchmarking tools included
- Auto-grading ready (nbgrader compatible)

---

## 📝 Example Content

### Chapter 1 Lab - Agent Architectures

```python
class SimpleReflexAgent:
    """Agent that responds directly to percepts"""
    
    def __init__(self, tolerance: float = 1.0):
        self.tolerance = tolerance
        
    def perceive(self, percept: Dict[str, Any]) -> str:
        """
        TODO: Implement the agent's decision logic
        
        Rules:
        - If temp < target - tolerance: return 'heat'
        - If temp > target + tolerance: return 'cool'
        - Otherwise: return 'idle'
        """
        # YOUR CODE HERE
        pass
```

### Chapter 2 Lab - Search Algorithms

```python
def a_star_search(graph, start, goal, heuristic):
    """
    TODO: Implement A* Search
    Return: (path, cost, nodes_expanded)
    """
    # YOUR CODE HERE
    pass

# Test on Romania map
start, goal = 'Arad', 'Bucharest'
path, cost, nodes = a_star_search(romania_map, start, goal, h_bucharest)
print(f"Path: {path}")
print(f"Cost: {cost}")
print(f"Nodes expanded: {nodes}")
```

### Chapter 3 Lab - Game Playing

```python
def minimax(game, maximizing_player):
    """
    TODO: Implement Minimax algorithm
    Return: (best_value, best_move)
    """
    # YOUR CODE HERE
    pass

# Play Tic-Tac-Toe
game = TicTacToe()
while not game.is_terminal():
    value, move = minimax(game, game.current_player)
    game.make_move(move)
```

---

## 🎯 Learning Path

### Week-by-Week Guide

**Weeks 1-5: Deductive Reasoning**
1. Week 1: Ch1 - Agents & Environments + Lab
2. Week 2: Ch2 - Uninformed Search + Lab Exercises 1-3
3. Week 3: Ch2 - Informed Search & CSP + Lab Exercises 4-5
4. Week 4: Ch3 - Minimax & Alpha-Beta + Lab Exercises 1-2
5. Week 5: Ch3 - MCTS & Tournament + Lab Exercises 3-5

**Weeks 6-10: Inductive Learning**
6. Week 6: Ch6 - ML Foundations
7. Week 7: Ch7 - Neural Networks
8. Week 8: Ch8 - CNNs, RNNs, Transformers
9. Week 9: Ch9 - Clustering & Dimensionality Reduction
10. Week 10: Ch10 - Reinforcement Learning

**Weeks 11-13: Integration**
11. Week 11: Ch11 - Probabilistic Graphical Models
12. Week 12: Ch12 - Knowledge Graphs
13. Week 13: Ch13 - Neuro-Symbolic AI & Integration

### Self-Study Approach

1. 📚 **Read** theory notebook for concepts
2. 💻 **Review** implementation notebook for examples
3. ✍️ **Complete** lab exercises (start easy, progress to challenges)
4. ✅ **Validate** your solutions with test cases
5. 📊 **Analyze** performance comparisons
6. 💬 **Discuss** questions with peers/instructors

---

## 🛠️ Technology Stack

- **Jupyter Book**: Interactive book framework
- **MyST Markdown**: Enhanced markdown with directives
- **Python 3.9+**: Programming language
- **NumPy**: Numerical computing
- **Matplotlib**: Visualizations
- **Pandas**: Data analysis
- **Sphinx**: Documentation generator

---

## 📚 Reference

**Primary Textbook**:  
Aggarwal, C. C. (2021). *Artificial Intelligence: A Textbook*. Springer.  
ISBN: 978-3-030-72357-6

**Complementary Resources**:
- Russell & Norvig. *Artificial Intelligence: A Modern Approach* (4th ed.)
- Course slides: [AI-slides](https://github.com/chebil/AI-slides)
- Enhancement roadmap: [ENHANCEMENT_SUMMARY.md](ENHANCEMENT_SUMMARY.md)

---

## 🤝 Contributing

Contributions are welcome! Please:

1. Fork the repository
2. Create a feature branch
3. Follow existing patterns (see lab notebooks for examples)
4. Include tests and documentation
5. Submit a pull request

See [ENHANCEMENT_SUMMARY.md](ENHANCEMENT_SUMMARY.md) for development roadmap and guidelines.

---

## 📜 License

This educational material is provided for academic purposes. Please respect the copyright of:
- Original textbook by Charu C. Aggarwal
- Course materials by Dr. Khalil Chebil

---

## 📧 Contact

**Instructor**: Dr. Khalil Chebil  
**Institution**: Prince Sattam bin Abdulaziz University (PSAU)  
**Email**: khalil.chebil@insat.ucar.tn  
**GitHub**: [@chebil](https://github.com/chebil)

---

## 📈 Progress Tracker

### Phase 1 Completed ✅
- [x] Repository setup
- [x] Jupyter Book configuration  
- [x] Table of contents (13 chapters)
- [x] **Repository cleanup** (removed duplicates)
- [x] **Chapter 1 Lab** (agent architectures)
- [x] **Chapter 2 Lab** (search algorithms)
- [x] **Chapter 3 Lab** (game playing)
- [x] Chapter 1 template
- [x] **Chapter 2 COMPLETE** ✅
  - [x] All search algorithms
  - [x] 8-Puzzle with heuristics
  - [x] Sudoku solver
  - [x] N-Queens solver
  - [x] Graph coloring
  - [x] Local search (Hill Climbing, SA)
  - [x] Exercises and examples
- [x] Documentation updates

### Phase 2 In Progress 🚧
- [ ] Labs for Chapters 4-5 (Logic)
- [ ] Labs for Chapters 6-10 (Machine Learning)
- [ ] Labs for Chapters 11-13 (Integration)
- [ ] Expand Chapter 7 (Neural Networks)
- [ ] Expand Chapter 9 (Unsupervised Learning)
- [ ] Expand Chapter 10 (Reinforcement Learning)
- [ ] Add modern AI topics (Transformers, LLMs)
- [ ] Create assessment materials

See [ENHANCEMENT_SUMMARY.md](ENHANCEMENT_SUMMARY.md) for detailed roadmap.

---

**Ready to start learning AI? Begin with [Chapter 1](chapters/ch01_introduction.ipynb)!** 🤖📚

**Want hands-on practice? Try the [Chapter 1 Lab](chapters/ch01_introduction_lab.ipynb)!** ✍️💻