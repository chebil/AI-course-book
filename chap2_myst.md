# Chapter 2: Important Concepts in AI

## The concept of Agents

- An **agent** is anything that can be viewed as perceiving its environment through sensors and acting upon that environment through actuators.
- An agent can be a robot, a chatbot, or any other entity that can perceive and act. **The decisions of an agent are made in the context of its environment.**
- An **environment** is the surrounding or conditions in which an agent operates.

```{mermaid}
graph TD
    A[Agent] --> B[Perception]
    A --> C[Action]
    B --> D[Sensors]
    C --> E[Actuators]
```

```{mermaid}
graph TD
    A[Environment] --> B[State]
    A --> C[Observations]
    A --> D[Actions]
    B --> E[Initial State]
    B --> F[Goal State]
    C --> G[Sensor Data]
    D --> H[Possible Actions]
    D --> I[Constraints]
```

---

## Types of environments

- **Fully observable**: The agent has access to all relevant information about the environment at all times.
- **Partially observable**: The agent has limited access to information.
- **Deterministic**: The outcome of an action is predictable and certain.
- **Stochastic**: The outcome of an action is uncertain and may involve randomness.
- **Static**: The environment does not change while the agent is deliberating.
- **Dynamic**: The environment can change while the agent is deliberating.
- **Discrete**: The number of possible states and actions is finite.
- **Continuous**: The number of possible states and actions is infinite.

```{mermaid}
graph TD
 A[Chess Game] --> B[Fully Observable]
 A --> C[Deterministic]
    A --> D[Static]
    A --> E[Discrete]
```

```{mermaid}
graph TD
    B[Self-Driving Car] --> F[Partially Observable]
    B --> G[Stochastic]
    B --> H[Dynamic]
    B --> I[Continuous]
```

---

## Types of Agents

- **Simple Reflex Agents**: Act based on the current percept, ignoring the rest of the percept history.
- **Model-Based Reflex Agents**: Maintain an internal state to keep track of the world.
- **Goal-Based Agents**: Act to achieve specific goals, considering future actions.
- **Utility-Based Agents**: Act to maximize a utility function, which measures the desirability of different states.

> **Agent examples**

| Agent            | Sensor/Input         | Actuator/Output      | Objective/Evaluation | State/Environment |
|------------------|---------------------|----------------------|----------------------|-------------------|
| Cleaning Robot   | Camera, Joint sensor | Limbs, Joints        | Cleanliness          | Object positions  |
| Chess Agent      | Board input          | Move output          | Position score       | Chess board       |
| Self-driving Car | Camera, Sound sensor | Car controls         | Safety, Speed, Goals | Traffic conditions|
| Chatbot          | Keyboard             | Screen               | Chat quality         | Dialog history    |

---

## Inductive vs Deductive Reasoning

- **Deductive Reasoning**: Starts with a knowledge base of facts and use logic or other systematic methods in order to make inferences. There are several approaches to deductive reasoning, including search and logic-based methods.
- **Inductive Reasoning**: Starts with specific observations or examples and generalizes them to form broader rules or patterns. Inductive reasoning is often used in machine learning, where algorithms learn from data to make predictions or decisions.

```{mermaid}
graph TD
    A[Deductive Reasoning] --> B[Knowledge Base]
    A --> C[Logic/Rules]
    B --> D[Specific Facts]
    C --> E[Inferences]
    
    F[Inductive Reasoning] --> G[Observations/Examples]
    F --> H[Generalization]
    G --> I[Specific Cases]
    H --> J[Broader Rules/Patterns]
```

---

## Deductive reasoning in Artificial Intelligence

There are certain types of problems that repeatedly reappear in deductive forms of artificial intelligence. These are important representatives of "typical" problems, and their solutions can often be generalized to other similar problems. Therefore, studying these problems can provide insights into solving more general problems in the deductive setting.

**1. Constraint Satisfaction Problems (CSPs)**:
- A set of variables, each with a domain of possible values.
- A set of constraints that specify allowable combinations of values for subsets of variables.

**Example: Sudoku**
- Variables: Each cell in the Sudoku grid.
- Domain: Numbers 1-9 for each cell.
- Constraints: No repeated numbers in any row, column, or 3x3 subgrid.

---

## Sudoku as a CSP

How to represent the Sudoku problem as a CSP:
- **Variables**: Each cell in the 9x9 grid (e.g., $(X_{1,1}, X_{1,2}, \ldots, X_{9,9})$).
- **Domains**: The possible values for each variable (1-9).
- **Constraints**:
  - Row constraints: All numbers in a row must be different.
  $$\forall i \in \{1, \ldots, 9\}, \forall j, k \in \{1, \ldots, 9\}, j \neq k: X_{i,j} \neq X_{i,k}$$
  - Column constraints: All numbers in a column must be different.
  $$\forall j \in \{1, \ldots, 9\}, \forall i, k \in \{1, \ldots, 9\}, i \neq k: X_{i,j} \neq X_{k,j}$$
  - Subgrid constraints: All numbers in each 3x3 subgrid must be different.
  $$\forall m, n \in \{0, 1, 2\}, \forall i, j, k, l \in \{1, 2, 3\}, (i,j) \neq (k,l): X_{3m+i, 3n+j} \neq X_{3m+k, 3n+l}$$

---

## Solving Sudoku with Python

```python
from constraint import Problem, AllDifferentConstraint

def solve_sudoku(puzzle):
    problem = Problem()
    
    # Define variables and their domains
    for row in range(9):
        for col in range(9):
            if puzzle[row][col] == 0:
                problem.addVariable((row, col), range(1, 10))
            else:
                problem.addVariable((row, col), [puzzle[row][col]])
    
    # Add row constraints
    for row in range(9):
        problem.addConstraint(AllDifferentConstraint(), [(row, col) for col in range(9)])
    
    # Add column constraints
    for col in range(9):
        problem.addConstraint(AllDifferentConstraint(), [(row, col) for row in range(9)])
    
    # Add subgrid constraints
    for box_row in range(3):
        for box_col in range(3):
            problem.addConstraint(AllDifferentConstraint(), 
                                  [(box_row * 3 + i, box_col * 3 + j) for i in range(3) for j in range(3)])
    
    # Get solutions
    solutions = problem.getSolutions()
    
    if solutions:
        return solutions[0]
    else:
        return None
```

---

## The 8-Queens Problem as a CSP

- Place 8 queens on a chessboard such that no two queens threaten each other.

![8-Queens Problem](https://media.geeksforgeeks.org/wp-content/uploads/20200725103943/ApronusDiagram1595653398-300x300.png)

**Modeling as a CSP:**

- **Variables**: $Q_1, Q_2, \ldots, Q_8$ (each representing the column position of a queen in each row).
- **Domains**: $\{1, 2, \ldots, 8\}$ for each variable.
- **Constraints**:
  - Row constraints: Each queen must be in a different row (inherent in the variable definition).
  - Column constraints: No two queens can be in the same column.
    $$\forall i, j \in \{1, \ldots, 8\}, i \neq j: Q_i \neq Q_j$$
  - Diagonal constraints: No two queens can be on the same diagonal.
    $$|Q_i - Q_j| \neq |i - j|, \forall i, j \in \{1, \ldots, 8\}, i \neq j$$

---

## Expert Systems

**3. Expert systems**:

- Expert systems are AI programs that mimic the decision-making abilities of a human expert. They use a knowledge base of human expertise and an inference engine to solve specific problems within a certain domain.
- Components of expert systems:
  - **Knowledge Base**: Contains domain-specific knowledge, including facts and rules.
  - **Inference Engine**: Applies logical rules to the knowledge base to deduce new information or make decisions.
  - **User Interface**: Allows users to interact with the expert system, input data, and receive advice or solutions.
- Applications of expert systems:
  - Medical diagnosis (e.g., MYCIN)
  - Financial forecasting
  - Troubleshooting and repair (e.g., XCON)

---

## Inductive Learning in Artificial Intelligence

- While deductive reasoning systems try to encode domain knowledge within a knowledge base to make hypotheses, inductive learning systems try to use data in order to create their own data-dependent hypotheses.
- In inductive learning a mathematical model is used to define a hypothesis, the resulting model is used for prediction on examples that have not been seen before.
- The general idea of using examples in order to learn models for prediction is also referred to as **machine learning**.

---

## Types of Data in Inductive Learning

```{mermaid}
graph TD
    A[Data Types] --> B[Multidimensional Data]
    B --> G[data point is represented by a set of numerical values, referred to as dimensions, features, or attributes]
    A --> C[Sequence Data]
    C --> H[text, speech, time series, and biological sequences. Each datum can be viewed as a set of features in a particular order, and the number of features in each datum might vary]
    A --> D[Spatial Data]
    D --> I[images have pixels that are arranged spatially, and neighboring pixels have closely related values]
```

---

## Types of Learning in Inductive Learning

**Supervised Learning**
- The model is trained on a labeled dataset, where each input has a corresponding output label. The goal is to learn a mapping from inputs to outputs. Examples include classification and regression tasks.

**Unsupervised Learning**
- The model is trained on an unlabeled dataset, and the goal is to discover patterns or structures within the data. Examples include clustering and dimensionality reduction tasks.

**Semi-Supervised Learning**
- The model is trained on a combination of labeled and unlabeled data. This approach is useful when obtaining a fully labeled dataset is expensive or time-consuming.

**Reinforcement Learning**
- The model learns by interacting with an environment and receiving feedback in the form of rewards or penalties. The goal is to learn a policy that maximizes cumulative rewards over time.

---

## Common Machine Learning Algorithms

![Machine Learning Algorithms](/images/ch2/image.png)
