# Chapter 5: Propositional Logic

## Introduction

Propositional logic is fundamental for artificial intelligence knowledge representation, providing a precise way to encode and reason about facts. Unlike natural language, formal sentences in propositional logic support provable inference.

**Example:**

"If it thunders, there is lightning. There is no lightning today. Therefore, there is no thunder today."

Logic encodes this so a computer can infer the conclusion:
- Let $T$ = "It thunders", $L$ = "There is lightning"
- Knowledge: $T \Rightarrow L$ and $\neg L$
- Conclusion: $\neg T$ (by modus tollens)

---

## Propositional Logic: The Basics

**Logical Operators:**

Sentences are assertions built from Boolean variables (True/False). The main operators:
- **Negation (¬):** reverses value
- **Conjunction (∧):** only True if both operands are True
- **Disjunction (∨):** True if at least one operand is True
- **Implication (⇒):** "If a, then b." False only if a is True and b is False
- **Equivalence (⇔):** True if both operands match

---

## Truth Tables

Truth tables list all possible values for logical expressions.
For two variables $a$ and $b$:

| a    | b    | a ∧ b | a ∨ b | ¬a |  a ⇒ b |
|------|------|-------|-------|----|--------|
| True | True |  True |  True |False|  True |
| True |False | False |  True |False| False |
|False | True | False |  True |True |  True |
|False |False | False | False |True |  True |

---

## Laws of Propositional Logic

**Key Laws:**

- **Idempotence:** $a ∨ a = a$, $a ∧ a = a$
- **Double Negation:** $¬(¬a) = a$
- **Commutativity/Associativity:** Order and grouping don't affect outcome
- **Distributivity:** $a ∧ (b ∨ c) = (a ∧ b) ∨ (a ∧ c)$
- **De Morgan's Laws:** $¬(a ∨ b) = (¬a) ∧ (¬b)$, $¬(a ∧ b) = (¬a) ∨ (¬b)$
- **Implication reduction:** $a ⇒ b = ¬a ∨ b$

---

## Tautologies and Satisfiability

- **Tautology:** Always True (e.g., $a ∨ ¬a$)
- **Satisfiable:** At least one assignment makes it True (e.g., $a ∧ b$)
- **Unsatisfiable:** No assignment makes it True (e.g., $a ∧ ¬a$)

**Example:** Prove $a ∨ ¬a$ is a tautology

Always True regardless of $a$'s value! ✓

| a    | ¬a   | a ∨ ¬a |
|------|------|--------|
| True | False| True   |
| False| True | True   |

---

## Clauses and Canonical Forms

- **Clause:** Disjunction of literals (e.g., $a ∨ ¬b ∨ c$)
- **Conjunctive Normal Form (CNF):** Conjunction of clauses: $(a ∨ b) ∧ (c ∨ ¬d)$
- **Disjunctive Normal Form (DNF):** Disjunction of conjunctions: $(a ∧ b) ∨ (¬c ∧ d)$

---

## Forward and Backward Chaining

- **Forward Chaining:** Start with known facts and use rules to infer new facts stepwise (data-driven)
- **Backward Chaining:** Start with goal, work backward to check if it can be proved (goal-driven)

**Example: Forward Chaining**

**Rules:** $c ∧ t ⇒ f$, $p ∧ f ⇒ b$, $b ⇒ a$

**Facts:** John has $c = True$, $t = True$, $p = True$

**Solution (Forward):**
1. Apply $c ∧ t ⇒ f$: Since $c$ and $t$ are True → infer $f = True$
2. Apply $p ∧ f ⇒ b$: Since $p$ and $f$ are True → infer $b = True$
3. Apply $b ⇒ a$: Since $b$ is True → infer $a = True$ ✓

---

## Knowledge Bases & Expert Systems

Propositional logic is the basis for knowledge-based expert systems that encode domain expertise as logical rules.

**Example: Medical Diagnosis System**

Patient John's symptoms:
- $c$: coughing, $t$: fever, $f$: infection, $p$: colored phlegm, $b$: bacterial infection, $a$: administer antibiotic

**Knowledge Base:**
- $c ∧ t ⇒ f$ : (cough + fever → infection)
- $p ∧ f ⇒ b$ : (colored phlegm + infection → bacterial)
- $b ⇒ a$ : (bacterial infection → antibiotic)

**Solution:** If John has $c = True$, $t = True$, $p = True$:
1. From $c ∧ t ⇒ f$: Infer $f = True$
2. From $p ∧ f ⇒ b$: Infer $b = True$
3. From $b ⇒ a$: Infer $a = True$ (Recommend antibiotic!)

---

## Automated Theorem Proving Techniques

**Key Inference Rules:**

- **Modus Ponens:** From $a ⇒ b$ and $a$, infer $b$
- **And-Elimination:** From $a ∧ b$, infer both $a$ and $b$
- **Or-Elimination:** From $a ∨ b$ and $¬a$, infer $b$

---

## Proof by Contradiction & Resolution

- **Proof by Contradiction:** Assume the negation of what you want to prove and show it leads to a contradiction
- **Resolution:** Pair clauses that differ by the negation of a literal, combine to eliminate it, repeat until contradiction or end

**Example:** Prove $b$ from $a ⇒ b$ and $a$

1. Convert to CNF: $a ⇒ b$ becomes $¬a ∨ b$
2. Knowledge Base: $\{¬a ∨ b, a\}$
3. To prove $b$, assume $¬b$ (proof by contradiction)
4. New KB: $\{¬a ∨ b, a, ¬b\}$
5. Resolution:
   - From $¬a ∨ b$ and $¬b$: get $¬a$
   - From $¬a$ and $a$: get contradiction! ⊥
6. Therefore $b$ must be True! ✓
