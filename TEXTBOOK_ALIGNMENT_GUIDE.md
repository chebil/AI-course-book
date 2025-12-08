# Textbook Alignment Guide

## Reference Textbook

**Aggarwal, C. C. (2021). *Artificial Intelligence: A Textbook*. Springer.**

ISBN: 978-3-030-72357-6

---

## Chapter-by-Chapter Alignment

### Chapter 4: Propositional Logic (pp. 105-136)

**Textbook Sections:**
- 4.1 Introduction
- 4.2 Propositional Logic: The Basics
- 4.3 Laws of Propositional Logic
- 4.4 Propositional Logic as Precursor to Expert Systems
- 4.5 Equivalence of Expressions
- 4.6 The Basics of Proofs in Knowledge Bases
- 4.7 The Method of Proof by Contradiction
- 4.8 Efficient Entailment with Definite Clauses
- 4.9 Summary

**Key Content to Include:**
- Truth tables and truth values
- Logical operators: ¬, ∧, ∨, →, ↔
- Well-formed formulas (WFF)
- Logical equivalences (De Morgan's, distributivity, etc.)
- CNF (Conjunctive Normal Form) and DNF
- Tautologies and satisfiability
- Resolution theorem proving
- Modus Ponens, and-elimination, or-elimination
- Forward and backward chaining for Horn clauses
- DPLL algorithm

**Algorithms:**
```
- TT-ENTAILS (truth table enumeration)
- PL-RESOLUTION (resolution)
- FORWARD-CHAIN (data-driven)
- BACKWARD-CHAIN (goal-driven)
- DPLL (SAT solving)
```

---

### Chapter 5: First-Order Logic (pp. 137-173)

**Textbook Sections:**
- 5.1 Introduction
- 5.2 The Basics of First-Order Logic
- 5.3 Syntax of First-Order Logic
- 5.4 Semantics of First-Order Logic
- 5.5 Using First-Order Logic
- 5.6 Knowledge Engineering
- 5.7 Inference in First-Order Logic
- 5.8 Forward and Backward Chaining
- 5.9 Resolution in First-Order Logic
- 5.10 Summary

**Key Content:**
- Constants, variables, functions, predicates
- Terms and atomic formulas
- Quantifiers: ∀ (universal), ∃ (existential)
- Interpretations and models
- Substitution and unification
- Skolemization
- Generalized Modus Ponens
- Lifted resolution

**Algorithms:**
```
- UNIFY (unification algorithm)
- FOL-FC-ASK (forward chaining)
- FOL-BC-ASK (backward chaining)
- FOL-RESOLUTION (resolution with unification)
```

---

### Chapter 6: Machine Learning Introduction (pp. 175-230)

**Textbook Sections:**
- 6.1 Introduction
- 6.2 The Linear Regression Problem
- 6.3 Binary and Multiclass Classification
- 6.4 Feature Engineering
- 6.5 Overfitting and Validation
- 6.6 Decision Trees
- 6.7 Ensemble Methods
- 6.8 Instance-Based Learning (k-NN)
- 6.9 Naive Bayes
- 6.10 Summary

**Key Content:**
- Supervised vs unsupervised learning
- Training/validation/test sets
- Entropy and information gain
- ID3 and C4.5 algorithms
- Pruning strategies
- Bagging and boosting
- k-Nearest Neighbors
- Conditional probability for Naive Bayes

**Algorithms:**
```
- ID3 (decision tree induction)
- C4.5 (improved decision trees)
- k-NN (instance-based)
- NAIVE-BAYES (probabilistic classifier)
```

---

### Chapter 7: Neural Networks (pp. 231-296)

**Textbook Sections:**
- 7.1 Introduction
- 7.2 Training a Single Computational Unit
- 7.3 Training a Multilayer Network
- 7.4 Backpropagation Algorithm
- 7.5 Practical Issues
- 7.6 Radial Basis Function Networks
- 7.7 Restricted Boltzmann Machines
- 7.8 Summary

**Key Content:**
- Perceptron model and learning
- Activation functions (sigmoid, tanh, ReLU)
- Multilayer perceptrons (MLPs)
- Backpropagation derivation
- Gradient descent variants (SGD, momentum, Adam)
- Regularization (L1, L2, dropout)
- Initialization strategies
- Vanishing/exploding gradients

**Algorithms:**
```
- PERCEPTRON (single unit)
- BACKPROPAGATION (multilayer training)
- SGD (stochastic gradient descent)
```

---

### Chapter 8: Advanced Neural Architectures (pp. 297-362)

**Textbook Sections:**
- 8.1 Introduction
- 8.2 Convolutional Neural Networks
- 8.3 Recurrent Neural Networks
- 8.4 LSTM and GRU
- 8.5 Attention Mechanisms
- 8.6 Transformers
- 8.7 Graph Neural Networks
- 8.8 Summary

**Key Content:**
- Convolution operation (stride, padding, pooling)
- CNN architectures (LeNet, AlexNet, VGG, ResNet)
- RNN architectures and backpropagation through time
- LSTM gates (forget, input, output)
- Self-attention and multi-head attention
- Transformer architecture (encoder-decoder)
- Graph convolutions

**Math Formulations:**
- 2D convolution: y[i,j] = Σ_m Σ_n x[i+m,j+n] · w[m,n]
- LSTM: f_t = σ(W_f·[h_{t-1}, x_t] + b_f)
- Attention: Attention(Q,K,V) = softmax(QK^T/√d_k)V

---

### Chapter 9: Unsupervised Learning (pp. 363-428)

**Textbook Sections:**
- 9.1 Introduction
- 9.2 Feature Learning and Dimensionality Reduction
- 9.3 Principal Component Analysis
- 9.4 Singular Value Decomposition
- 9.5 Clustering Algorithms
- 9.6 k-Means
- 9.7 Hierarchical Clustering
- 9.8 Density-Based Clustering
- 9.9 Autoencoders
- 9.10 Summary

**Key Content:**
- PCA formulation and eigendecomposition
- Dimensionality reduction techniques
- k-Means objective and Lloyd's algorithm
- Agglomerative vs divisive clustering
- DBSCAN algorithm
- Autoencoder architecture
- Variational autoencoders (VAE)

**Algorithms:**
```
- K-MEANS (iterative clustering)
- HIERARCHICAL-CLUSTERING (agglomerative)
- DBSCAN (density-based)
- PCA (dimensionality reduction)
```

---

### Chapter 10: Reinforcement Learning (pp. 429-490)

**Textbook Sections:**
- 10.1 Introduction
- 10.2 Markov Decision Processes
- 10.3 Bellman Equations
- 10.4 Dynamic Programming
- 10.5 Monte Carlo Methods
- 10.6 Temporal Difference Learning
- 10.7 Q-Learning
- 10.8 Policy Gradient Methods
- 10.9 Deep Reinforcement Learning
- 10.10 Summary

**Key Content:**
- MDP formulation (S, A, P, R, γ)
- Value functions V(s) and Q(s,a)
- Bellman optimality equations
- Policy iteration and value iteration
- TD(0) and TD(λ)
- SARSA vs Q-Learning
- Actor-critic methods
- DQN, A3C, PPO

**Algorithms:**
```
- VALUE-ITERATION
- POLICY-ITERATION
- Q-LEARNING
- SARSA
- POLICY-GRADIENT
```

---

### Chapter 11: Probabilistic Graphical Models (pp. 491-548)

**Textbook Sections:**
- 11.1 Introduction
- 11.2 Probability Basics
- 11.3 Bayesian Networks
- 11.4 Inference in Bayesian Networks
- 11.5 Variable Elimination
- 11.6 Sampling Methods
- 11.7 Markov Networks
- 11.8 Hidden Markov Models
- 11.9 Learning in Graphical Models
- 11.10 Summary

**Key Content:**
- Joint probability factorization
- Conditional independence
- D-separation
- Exact inference algorithms
- Approximate inference (sampling)
- Forward-backward algorithm for HMMs
- Viterbi algorithm
- EM algorithm for learning

**Algorithms:**
```
- VARIABLE-ELIMINATION
- FORWARD-BACKWARD (HMM)
- VITERBI (most likely sequence)
- GIBBS-SAMPLING
- EM-ALGORITHM (parameter learning)
```

---

### Chapter 12: Knowledge Graphs & Semantic Web (pp. 549-598)

**Textbook Sections:**
- 12.1 Introduction
- 12.2 Knowledge Representation
- 12.3 Ontologies and Semantic Web
- 12.4 RDF and SPARQL
- 12.5 Knowledge Graph Embeddings
- 12.6 Link Prediction
- 12.7 Entity Resolution
- 12.8 Applications
- 12.9 Summary

**Key Content:**
- Triple representation (subject, predicate, object)
- RDF schema and OWL
- SPARQL query language
- TransE, TransH, TransR embeddings
- ComplEx, DistMult models
- Entity alignment and deduplication
- Relation extraction

**Formulations:**
- TransE: h + r ≈ t
- DistMult: score(h,r,t) = h^T diag(r) t
- ComplEx: score = Re(h^T diag(r) t̄)

---

### Chapter 13: Integration & Applications (pp. 599-650)

**Textbook Sections:**
- 13.1 Introduction
- 13.2 Neuro-Symbolic AI
- 13.3 Transfer Learning
- 13.4 Meta-Learning
- 13.5 Multi-Task Learning
- 13.6 Explainable AI
- 13.7 Fairness and Ethics
- 13.8 Real-World Systems
- 13.9 Future Directions
- 13.10 Summary

**Key Content:**
- Combining symbolic reasoning with neural networks
- Pre-training and fine-tuning
- Few-shot and zero-shot learning
- Model-agnostic meta-learning (MAML)
- LIME and SHAP for explainability
- Bias detection and mitigation
- Production ML systems

---

## Implementation Guidelines

For each chapter:

### Theory Notebook Structure
1. **Introduction** - Motivation and overview
2. **Formal Definitions** - Mathematical foundations
3. **Algorithms** - Pseudocode with explanations
4. **Complexity Analysis** - Time and space complexity
5. **Properties** - Soundness, completeness, optimality
6. **Examples** - Worked examples with steps
7. **Comparison Tables** - Algorithm/method comparisons
8. **Link to Implementation** - Reference to code notebook

### Implementation Notebook Structure
1. **Setup** - Imports and utilities
2. **Framework Classes** - Base classes and interfaces
3. **Algorithm Implementations** - Complete working code
4. **Simple Examples** - Basic demonstrations
5. **Real-World Application** - Complete end-to-end example
6. **Performance Analysis** - Benchmarks and comparisons
7. **Link to Theory** - Reference back to concepts

---

## Quality Checklist

### Theory Notebooks ✓
- [ ] All major textbook sections covered
- [ ] Algorithms in pseudocode (not Python)
- [ ] Mathematical formulations with LaTeX
- [ ] Complexity analysis included
- [ ] No implementation code in main content
- [ ] Examples worked through step-by-step
- [ ] Comparison tables where appropriate
- [ ] Links to implementation notebook

### Implementation Notebooks ✓
- [ ] All algorithms from theory implemented
- [ ] Framework/base classes defined
- [ ] Detailed docstrings
- [ ] Simple examples for each algorithm
- [ ] Complete real-world application
- [ ] Performance metrics included
- [ ] Comparison of different approaches
- [ ] Links back to theory notebook

---

## Expansion Status

- [x] Chapter 4: Propositional Logic - **COMPLETE**
- [ ] Chapter 5: First-Order Logic - **IN PROGRESS**
- [ ] Chapter 6: ML Introduction - **IN PROGRESS**
- [ ] Chapter 7: Neural Networks - **IN PROGRESS**
- [ ] Chapter 8: Domain Architectures - **PENDING**
- [ ] Chapter 9: Unsupervised Learning - **PENDING**
- [ ] Chapter 10: Reinforcement Learning - **PENDING**
- [ ] Chapter 11: Probabilistic Models - **PENDING**
- [ ] Chapter 12: Knowledge Graphs - **PENDING**
- [ ] Chapter 13: Integration - **PENDING**

---

*Last Updated: December 8, 2025*