# Chapter 4: Multiagent Search

## Introduction to Multiagent Environments

Multiagent environments involve multiple agents interacting with the environment, where the actions of one agent can affect the outcomes for others. Unlike single-agent search, agents cannot predict other agents' actions with certainty, which requires contingency planning.

**Key Challenges:**
- Agents have only partial knowledge of other agents' states or intentions.
- Planning must account for the possible actions of other agents.
- The actions of one agent can directly impact the environment and the other agents.

---

## Types of Multiagent Environments

**Competitive Agents**
- Agents compete against each other in an adversarial setting. The goal is to maximize one's own utility, which often means minimizing the opponent's utility.
- Examples: Chess, Tic-Tac-Toe, Go

**Independent Agents**
- Agents operate independently without direct communication. They may have overlapping goals but do not coordinate their actions.
- Example: Self-driving cars navigating traffic

**Cooperative Agents**
- Agents communicate and work together to optimize a shared global objective. Success is measured at the group level.
- Example: Collaborative robots in a warehouse, team-based video games

---

## Uninformed Search: AND-OR Search Trees

AND-OR search trees are used to model multiagent search problems. They handle contingencies by representing the choices of all agents.

- **OR nodes:** Represent points where our agent (A) has a choice of action.
- **AND nodes:** Represent points where the opponent (B) has a choice of action. We must be prepared for *all* possible responses from the opponent.

```{mermaid}
graph TD
    A(Start OR node) --> B(AND node)
    A --> C(AND node)
    B --> D(OR node)
    B --> E(OR node)
    C --> F(OR node)
    style A fill:#89CFF0
    style D fill:#89CFF0
    style E fill:#89CFF0
    style F fill:#89CFF0
```

---

## AO-Search Algorithm

The AO-Search algorithm traverses an AND-OR tree to find a guaranteed path to a goal state.

```python
def ao_search(state, goal_test):
    # If current state is a goal, return True
    if goal_test(state):
        return True
    # If state is an OR node (our turn)
    if state.is_or_node():
        # We need to find just ONE successful action
        for action in state.get_actions():
            next_state = state.get_next(action)
            if ao_search(next_state, goal_test):
                return True # Found a winning path
        return False # No winning action from this state
    # If state is an AND node (opponent's turn)
    else:
        # We need to handle ALL opponent responses
        for action in state.get_actions():
            next_state = state.get_next(action)
            if not ao_search(next_state, goal_test):
                return False # Opponent has a move that makes us lose
        return True # We can win regardless of opponent's move
```

---

## Informed Search: Minimax Algorithm

The Minimax algorithm is used for two-player, zero-sum games (like Chess or Tic-Tac-Toe). It assumes both players play optimally.

- **MAX player:** Tries to maximize the score.
- **MIN player:** Tries to minimize the score.

![Minimax](/images/ch4/2.png)

---

## Minimax: MaxPlayer and MinPlayer Algorithms

The algorithm is implemented with two mutually recursive functions: `MaxPlayer` and `MinPlayer`.

**MaxPlayer Algorithm**
```python
def max_player(state, depth):
    if depth == 0 or is_terminal(state):
        return utility(state)
    
    max_eval = -infinity
    for action in get_actions(state):
        next_state = get_next_state(state, action)
        eval = min_player(next_state, depth - 1)
        max_eval = max(max_eval, eval)
    return max_eval
```

**MinPlayer Algorithm**
```python
def min_player(state, depth):
    if depth == 0 or is_terminal(state):
        return utility(state)
        
    min_eval = +infinity
    for action in get_actions(state):
        next_state = get_next_state(state, action)
        eval = max_player(next_state, depth - 1)
        min_eval = min(min_eval, eval)
    return min_eval
```

---

## Alpha-Beta Pruning

Alpha-Beta pruning is an optimization technique for the Minimax algorithm. It reduces the number of nodes evaluated by pruning branches that will not influence the final decision.

- **α (alpha):** The best value found so far for the MAX player.
- **β (beta):** The best value found so far for the MIN player.

**Pruning Condition:** A branch is pruned if `α >= β`.

![Alpha-Beta Quiz](/images/ch4/3.png)

![Alpha-Beta Solution](/images/ch4/4.png)

---

## Monte Carlo Tree Search (MCTS)

MCTS is an inductive search algorithm that uses statistical sampling to find optimal moves. It is highly effective in games with large branching factors.

**The MCTS process has four main steps:**
1. **Selection:** Traverse the tree from the root, selecting nodes with the highest UCT values.
2. **Expansion:** When a leaf node is reached, expand it by adding one or more child nodes.
3. **Simulation (Rollout):** From a new node, play a random game to the end to get a result (win/loss).
4. **Backpropagation:** Update the visit counts and win counts of all nodes along the path from the new node back to the root.

**UCT Formula:**
The Upper Confidence Bound for Trees (UCT) formula balances exploration and exploitation:

$$u_i = \frac{w_i}{n_i} + c \sqrt{\frac{\ln(N_i)}{n_i}}$$

Where:
- $w_i$: Number of wins for node $i$
- $n_i$: Number of visits to node $i$
- $N_i$: Number of visits to the parent of node $i$
- $c$: Exploration parameter

---

## Deductive vs. Inductive Approaches

| Aspect | Deductive Approach | Inductive Approach |
|---|---|---|
| **Knowledge Source** | Expert-defined evaluation functions and rules. | Learns from data and experience (self-play). |
| **Example** | Deep Blue, Stockfish (early versions) | AlphaZero, Leela Chess Zero |
| **Strengths** | Fast, interpretable, and strong with good heuristics. | Can discover novel strategies beyond human knowledge. |
| **Weaknesses** | Limited by the quality of human-provided knowledge. | Requires massive amounts of data and computation. |
| **Search Strategy** | Systematic and exhaustive (e.g., Minimax). | Focused on promising areas of the search space. |

---

## Summary

- **Multiagent Search** is essential for environments with multiple interacting agents.
- **AND-OR Trees** provide a framework for handling contingencies and opponent moves.
- **Minimax** is a fundamental algorithm for adversarial, zero-sum games.
- **Alpha-Beta Pruning** significantly optimizes Minimax by eliminating irrelevant branches.
- **MCTS** uses statistical sampling (rollouts) to guide search, enabling strong performance in complex games.
- Modern AI often combines **deductive** and **inductive** approaches to achieve state-of-the-art performance.
