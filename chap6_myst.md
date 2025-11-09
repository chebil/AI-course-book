# Chapter 6: First-Order Logic

## Introduction

- **First-Order Logic (FOL)** expands propositional logic for richer AI reasoning.
- Addresses statements true for **entire domains** of objects, not just specific cases.
- **Example**:
  - **General statement**: "All mammals give birth to live babies."
  - **Specific fact**: "A cat is a mammal."
  - **Inference using FOL**: "A cat gives birth to live babies."

**Why Propositional Logic is Limited**

- **Propositional Logic**: Each statement only applies to specific cases; must list every possibility explicitly.
- **Limitation Example**:
  - "John is coughing" and "John has a temperature" must be repeated for every patient.
- **FOL Solution**: Write rules for all objects, then instantiate for any individual in the domain.

**Example in expert systems**:
> IF coughing AND temperature THEN infection
> This applies to any patient, not just 'John'.

---

## Predicates Explained

- **Predicate**: Function returning True/False, describing relationships or properties.
  - **Arity**: Number of arguments
- **Example (Awards)**:
  - F(x, y, z): "x won award z for movie y"
    - F(Steven Spielberg, Saving Private Ryan, Best Director Award) = True
    - F(John Williams, The Terminal, BMI Music Award) = True
- **Example (Medical)**:
  - S(x): "x has a symptom"
  - P(x): "x is a patient"
  - Use same predicate for any patient and any symptom—no need for endless propositional rules.

---

## Advantages of First-Order Logic

- **Generalization**: One rule covers many cases.
- **Domain of discourse**: Set of all considered objects (people, animals, movies, etc.)
- **Efficiency**: Less redundancy.
- **Relation Example**:
  - B(x): "x gives birth to live babies"
    - Use once for all mammals, not for every individual
- **Counting Example**:
  - To find how many movies won an award, add rules for counting in FOL—not practical in propositional logic.

---

## Quantifiers (Universal & Existential)

- **Universal quantifier (∀)**: "For all x, statement S(x) is true."
  - $\forall x: E(x, Beef) \rightarrow N(x)$
    - If anyone eats beef, they're non-vegetarian.
- **Existential quantifier (∃)**: "There exists at least one x such that S(x) is true."
  - $\exists x: E(x, Beef)$
    - There is at least one person who eats beef.

**Clarification with order:**
- $\forall x, \exists y: E(x, y)$
  - Each person eats at least one food (may differ for each)
- $\exists y, \forall x: E(x, y)$
  - There is one food everybody eats (much stronger claim)

---

## Functions in First-Order Logic

- **Function**: Maps object(s) to object(s)
  - $Fav(x)$: favorite food of person x
  - $\forall x: Fav(x) = Beef$
- **Example**:
  - If $Fav(John) = Beef$, "John's favorite food is beef."
- **Function-based reasoning**:
  - If $M(Fav(x))$ is true (favorite food is meat), infer $N(x)$ (non-vegetarian)

---

## Populating a Knowledge Base

- **Axioms**: Base facts (e.g., parent-child)
  - $P(x, y)$: "x is parent of y"
- **Recursive definition** for ancestor:
  - $\forall x, y: P(x, y) \rightarrow A(x, y)$
  - $\forall x, y, z: P(x, z) ∧ A(z, y) \rightarrow A(x, y)$
  - $\forall x: \exists z: P(z, x)$ (everyone has a parent)
- **Example set**:
  - Jim parent of Sue: $P(Jim, Sue)$
  - Sue parent of Ann: $P(Sue, Ann)$
  - Infer Jim ancestor of Ann: via recursive ancestor rules.

---

## Example – Medical Expert System

- **General rules** (apply to all patients x):
  - $C(x) ∧ T(x) \rightarrow F(x)$ — Cough and temperature imply infection
  - $P(x) ∧ F(x) \rightarrow B(x)$ — Phlegm + infection imply bacterial infection
  - $B(x) \rightarrow A(x)$ — Bacterial infection → Antibiotics needed
- **Facts for John**:
  - $C(John)$ (John coughs)
  - $T(John)$ (John has temperature)
  - $P(John)$ (John has colored phlegm)
- **Inference**:
  - Derive $A(John)$ (John needs antibiotics)

---

## Substitution, Unification & Skolemization

- **Substitution**: Replace variables with actual constants for inference.
  - Rule: $\forall x: E(x, Beef) \rightarrow N(x)$
  - Fact: $E(John, Beef)$
  - Substitute: $N(John)$

- **Unification**:
  - Make two formulas look identical for inference.
  - $E(y, Beef)$ and $E(John, Beef)$ unify when $y = John$

- **Skolemization**:
  - Replace existentially quantified variables with Skolem constants or functions.
  - $\exists y: E(x, y)$ becomes $E(x, f(x))$, where $f(x)$ is a "Skolem function" of $x$.

---

## FOL vs Propositional Logic

| Aspect                  | Propositional Logic                  | First-Order Logic                       |
|-------------------------|--------------------------------------|-----------------------------------------|
| Applies to              | Specific statements                  | Objects, variable relations, functions  |
| Compactness             | Redundant for large/similar domains  | Compact rules over domains              |
| Expressiveness          | Only declarative statements          | Relational, compositional, generic      |
| Natural Language Links  | Weak                                 | Strong (NL is relational)               |
| Example                 | "John is coughing"                   | "For all patients x, C(x)"              |

---

## Summary

- **First-Order Logic**:
  - Enables reasoning over domains, not just single cases.
  - Employs predicates, quantifiers, and functions for compact knowledge representation.
  - Strengths: Compactness, generalization, direct mapping to natural language semantics.
- **Used for**: Expert systems, knowledge graphs, semantic web, medical diagnosis.
