## **Conceptual Shorts List (Purely Ideas)**

### **1. Core Programming Paradigms**

- **Object-Oriented Programming (OOP)** – organizing code around objects with encapsulated state and behavior.
- **Functional Programming (FP)** – writing programs with pure functions, immutability, and composition.
- **Declarative vs Imperative Thinking** – describing _what_ should happen vs instructing _how_ to do it.
- **Reactive vs Imperative Paradigms** – responding to data streams vs performing step-by-step instructions.
- **Procedural vs Event-Driven Thinking** – grouping actions vs reacting to events.

---

### **2. Design Patterns (Conceptual)**

- **Singleton Pattern** – a single, globally accessible instance and when it’s appropriate.
- **Factory Pattern** – delegating object creation to a method or class to decouple construction from use.
- **Observer Pattern** – decoupling event producers from consumers through subscriptions.
- **Strategy Pattern** – swapping behavior dynamically without changing client code.
- **Command Pattern** – encapsulating actions as objects to decouple requesters from executors.
- **Adapter Pattern** – converting one interface into another expected by the client.
- **Builder Pattern** – constructing complex objects step by step.
- **Composite Pattern** – treating a group of objects the same as a single object (e.g., widget tree).
- **Decorator Pattern** – dynamically adding responsibilities to objects.

---

### **3. State & Reactivity**

- **What is “State”?** – understanding local vs global state and why it matters.
- **State Management Paradigms** – centralized vs decentralized, push vs pull, reactive vs imperative.
- **Event → State → UI Flow** – how events propagate through a system to update the UI.
- **State Immutability Principles** – why immutable state leads to predictability and easier reasoning.
- **Unidirectional Data Flow** – keeping data changes in a single direction to avoid complexity.

---

### **4. Architecture Principles**

- **Separation of Concerns** – dividing responsibilities between UI, state, and business logic.
- **Clean Architecture Overview** – layers (presentation, domain, data) and their roles.
- **Repositories** – conceptually abstracting data sources from business rules.
- **Use Cases / Application Logic** – encapsulating what the system _does_, not how UI reacts.
- **Dependency Inversion** – depending on abstractions rather than concrete implementations.
- **Hexagonal / Ports & Adapters** – isolating core logic from external frameworks or APIs.
- **Layered Architecture vs Monoliths** – why clear boundaries make code maintainable.

---

### **5. UI & Presentation Concepts**

- **Declarative UI Concept** – describing _what_ should be displayed, not how.
- **Widget Composition Principles** – why breaking UI into small, reusable components improves clarity.
- **Coordinating UI and State** – why state represents _intent_, and UI executes _implementation_.
- **Controller Separation** – conceptual understanding that lifecycle-managed objects belong in UI, not state logic.

---

### **6. Anti-Patterns & Best Practices**

- **God Blocs / God Objects** – why combining too many responsibilities is dangerous.
- **Coupling UI and State Logic** – why mixing widget lifecycle objects with state is problematic.
- **Single Responsibility Principle** – why each layer/object should have one reason to change.
- **Testability Principles** – designing conceptual boundaries that make testing simpler.
