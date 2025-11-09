# Chapter 3: Searching State Spaces

## Introduction to State Space as a Graph

- The agent needs to search through the space in order to reach a particular goal or to maximize its reward. In some cases, the path chosen by the agent through the search space has an impact on the earned reward.
- In most real-world settings, **the state space is very large**, which makes the search process very challenging.
- The modeling of the state space as a graph enables the development of algorithms that leverage the graph structure of the space for search.
- A state space can be represented as a graph, where:
  - **Nodes** = possible states
  - **Edges** = transitions/actions

```{mermaid}
graph LR
	A[Start State] --> B[State 1]
	B --> C[State 2]
	C --> D[state 3]
	D --> E[Goal State]
	A --> F[State 4]
	F --> E
```

---

## Uninformed Search

Uninformed search algorithms, also known as blind search algorithms, are a category of search strategies that operate without any domain-specific knowledge about the problem being solved. They explore the search space systematically, relying solely on the structure of the state space and the goal test to find a solution.

---

## Generic Search Algorithm

The generic search algorithm forms the basis for many search strategies (BFS, DFS, etc.). It maintains a frontier of states to explore and a set of explored states to avoid revisiting.

```python
Algorithm GenericSearch(Initial State: s, Goal Condition: G)
 begin
	LIST= { s };
	repeat
		Select current node i from LIST based on pre-defined strategy;
		Delete node i from LIST;
		Add node i to the hash table VISIT;
		for all nodes j ∈ A(i) directly connected to i via transition do
		begin
			if (j is not in VISIT) add j to LIST;
			pred(j)=i;
		end
	until LIST is empty or current node i satisfies G;
	if current node satisfies G return success
		else return failure;
	{ The predecessor array can be used to trace back path from i to s }
 end
```

**Key Components:**
- **List:** Used to store the frontier of states to be explored.
- **VISIT:** A hash table to keep track of explored states to avoid cycles.
- **pred(j):** An array to store the predecessor of each state for path reconstruction.

---

## Depth-First Search (DFS)

The insertion and deletion operations in the LIST are performed at the end of the list, making it a Last In First Out (LIFO) structure. This means that the most recently added node is expanded first, leading to a deep exploration of the search space before backtracking.

---

## Breadth-First Search (BFS)

The insertion operation is performed at the end of the list, while the deletion operation is performed at the front of the list, making it a First In First Out (FIFO) structure. This means that nodes are expanded in the order they were added, leading to a level-by-level exploration of the search space.

---

## DFS vs BFS Comparison

**Depth-First Search (DFS)**
- Explores deep into branches before backtracking.
- Uses less memory (stores current path).
- May get stuck in infinite branches.
- Not guaranteed to find shortest path.

**Breadth-First Search (BFS)**
- Explores nodes level by level.
- Uses more memory (stores all nodes at current level).
- Guaranteed to find shortest path.
- Can be slower for deep trees.

![DFS vs BFS illustration](/images/ch3/bfsdfs.png)

---

## Informed Search

Informed search algorithms, also known as heuristic search algorithms, are a category of search strategies that utilize domain-specific knowledge to guide the search process.
- They employ heuristics, which are problem-specific rules or strategies, to estimate the cost of reaching the goal from a given state.
- This allows informed search algorithms to explore the search space more efficiently and effectively than uninformed search algorithms.

---

## Best-First Search (Greedy Search)

- Best-First Search is an informed search algorithm that selects the most promising node to expand based on a **heuristic function**, which estimates the cost from the current node to the goal.
- The algorithm uses a priority queue to manage the frontier, prioritizing nodes with lower heuristic values.

---

## A* Search Algorithm

**Combining Best-First Search and Uniform Cost Search**

```python
Algorithm GenericSearch(Initial State: s, Goal Condition: G)
 begin
	LIST= { s };
	repeat
		Select current node i from LIST based on pre-defined strategy;
		Delete node i from LIST;
		Add node i to the hash table VISIT;
		for all nodes j ∈ A(i) directly connected to i via transition do
		begin
			if (j is not in VISIT) add j to LIST;
			pred(j)=i;
			choose the node j according to f(j):
				f(j) = min{c(j)} // Uniform Cost Search
				f(j) = min{h(j)} // Best-First Search
				f(j) = min{c(j) + h(j)} // A* Search
		end
	until LIST is empty or current node i satisfies G;
	if current node satisfies G return success
		else return failure;
 end
```

---

## Local Search Algorithms

- Local search algorithms are a category of optimization techniques that focus on exploring the immediate neighborhood of the current solution to find an improved solution.
- Unlike global search algorithms that explore the entire search space, local search algorithms make incremental changes to the current solution, aiming to find a better solution by iteratively refining it.
- They are particularly useful for solving large-scale optimization problems where the search space is vast and complex.

**What are scenarios in which the final state matters rather than the path required to reach it?**

- **The eight-queens problem**: The final arrangement of the queens matters, not the sequence of moves taken to achieve it.
- **The traveling salesman problem**: The final route matters, not the cities visiting order during the search process.

---

## Hill Climbing

Hill Climbing is a local search algorithm that iteratively moves towards the neighbor state with the highest value (or lowest cost) until no better neighbors are found. It is a greedy algorithm that makes decisions based solely on local information, without considering the global structure of the search space.

```python
Algorithm HillClimb(Initial State: s, Loss function: L(·))
 begin
	CURRENT={s};
	repeat
		Scan adjacent states to CURRENT until all states are scanned or a
		state NEXT is found with lower loss than CURRENT;
		if a state NEXT was found with lower loss than that of CURRENT
			set CURRENT=NEXT;
	until no improvement in previous iteration;
	return CURRENT;
 end
```

---

## Tabu Search

Tabu Search is an advanced local search algorithm that enhances the basic hill climbing approach by incorporating memory structures to avoid cycling back to previously visited solutions. It maintains a list of "tabu" moves or solutions that are temporarily forbidden, allowing the search to explore new areas of the solution space and escape local optima.

---

## Simulated Annealing

- Simulated Annealing is a probabilistic optimization algorithm inspired by the annealing process in metallurgy.
- The algorithm allows moves to worse solutions with a certain probability, which enables the search to escape local optima and explore the solution space more thoroughly.
- Since the algorithm can accept worse solutions, it stores the best solution found during the search process.
- The probability of accepting worse solutions decreases over time, controlled by a temperature parameter that gradually cools down.

---

## Genetic Algorithms

- Genetic algorithms borrow their paradigm from the process of biological evolution.
- Genetic algorithms work with a population of solutions (denoted by P), whose fitness is improved over time (as in biological evolution).
- Each solution in the population is typically represented as a string of bits (0s and 1s), known as a chromosome.
- For example, in the traveling salesperson problem, a representative string could be a sequence of indices of the cities, which defines the tour of the traveling salesperson.
- The "fitness" of the string may be defined by the cost of the tour corresponding to that sequence of cities.
- Genetic algorithms use operations inspired by natural selection and genetics, such as selection, crossover (recombination), and mutation, to evolve the population of solutions over successive generations.
