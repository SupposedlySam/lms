## **Separation of Concerns**

**Video Title:** _Conceptual Short: Separation of Concerns_

**Duration:** 8–10 minutes

### **Outline of Topics to Cover**

1. **Introduction (1–2 min)**

   - Define separation of concerns (SoC).
   - Explain why dividing responsibilities leads to maintainable code.

2. **Applying SoC in Flutter (3–4 min)**

   - UI handles presentation.
   - State handles business logic.
   - Domain layer handles rules and calculations.

3. **Benefits (2–3 min)**

   - Easier testing, debugging, and collaboration.
   - Reduces coupling between components.

4. **Summary / Takeaways (1 min)**

   - Each layer has a single responsibility.
   - Clear boundaries improve maintainability and scalability.

---

### **Optional Visual Aids**

- Layer diagram separating UI, state, and domain.
- Example widget tree showing SoC in practice.
- Color-coded diagram showing responsibilities.

### **Tags**

- lives:presentation, lives:domain, lives:data → SoC applies across all layers of the system.
- decouple, coordination → Encourages independent modules and coordinated interactions.
- integrity, self-contained → Each module maintains its own correctness and independence.
- feature, layer → Can be applied at feature-level or across layers.

---

## **Clean Architecture Overview**

**Video Title:** _Conceptual Short: Clean Architecture Overview_

**Duration:** 10–12 minutes

### **Outline of Topics to Cover**

1. **Introduction (1–2 min)**

   - What Clean Architecture is and its goals.
   - High-level overview of layers.

2. **Layer Breakdown (3–4 min)**

   - Presentation: UI and state management.
   - Domain: business rules, entities, use cases.
   - Data: repositories, APIs, persistence.

3. **Principles (2–3 min)**

   - Dependency rule: inner layers should not depend on outer layers.
   - Maintainability, testability, and separation of concerns.

4. **Summary / Takeaways (1 min)**

   - Clean Architecture promotes decoupling, scalability, and testability.

---

### **Optional Visual Aids**

- Layered diagram showing dependencies.
- Arrows illustrating dependency rule (inner layers unaware of outer layers).
- Example of flow: UI → Use Case → Repository → Data.

### **Tags**

- lives:presentation, lives:domain, lives:data → Concept applies to all layers.
- decouple, coordination, integrity → Ensures proper separation and maintainable interactions.
- self-contained → Each layer has isolated responsibilities.
- feature, layer → Can be applied at feature-level or system-wide.

---

## **Repositories**

**Video Title:** _Conceptual Short: Repositories_

**Duration:** 6–8 minutes

### **Outline of Topics to Cover**

1. **Introduction (1–2 min)**

   - Conceptually abstracting data sources from business rules.
   - Motivation: decouple domain logic from storage or API details.

2. **Implementation Concepts (2–3 min)**

   - Interfaces defining repository contracts.
   - Concrete implementations handling databases, APIs, or local storage.

3. **Benefits (2–3 min)**

   - Testable, replaceable data sources.
   - Clear separation between domain logic and infrastructure.

4. **Summary / Takeaways (1 min)**

   - Repositories isolate business logic from concrete data sources.
   - Encourages testability and maintainability.

---

### **Optional Visual Aids**

- Diagram showing domain layer calling repository interface, with multiple implementations.
- Example Dart code with abstract repository and concrete class.

### **Tags**

- lives:domain, lives:data → Repository exists at the boundary of domain and data layers.
- decouple, coordination, transform → Decouples domain logic from data source, coordinates access, transforms raw data.
- self-contained → Each repository encapsulates its own data access logic.
- feature, layer → Applied at feature-level or across layers.

---

## **Application Layer (Use Cases) vs Domain Layer**

**Video Title:** _Conceptual Short: Application Layer vs Domain Layer_

**Duration:** 10–12 minutes

### **Outline of Topics to Cover**

1. **Introduction (2 min)**

   - **Key Distinction**: Business Rules (Domain) vs Business Processes (Application)
   - Why Use Cases belong in their own layer, not Domain layer
   - Clean Architecture's four layers: Presentation → Application → Domain → Infrastructure

2. **Domain Layer - Pure Business Rules (3–4 min)**

   - **What**: Timeless business logic independent of any application
   - **Examples**: `Student.purchaseVideo()`, `Email` validation, `VideoPurchasePolicy`
   - **Characteristics**: No infrastructure dependencies, pure business knowledge
   - **Test Focus**: Business rule correctness

3. **Application Layer - Business Process Orchestration (3–4 min)**

   - **What**: Coordinates domain objects with infrastructure services
   - **Examples**: `PurchaseVideoUseCase`, `RegisterStudentUseCase`
   - **Responsibilities**: Transaction management, error handling, side effects, workflow coordination
   - **Key Insight**: "Conductor of the orchestra" - coordinates but doesn't contain business rules

4. **Why Separation Matters (2 min)**

   - **Problem if Use Cases in Domain**: Domain contaminated with infrastructure concerns
   - **Problem if No Application Layer**: Presentation layer doing complex orchestration
   - **Solution**: Clean separation allows domain purity and presentation simplicity

5. **Summary / Takeaways (1 min)**

   - Domain = "What are the business rules?"
   - Application = "How do we execute business processes?"
   - Use cases are reusable across different interfaces (web, mobile, API)

---

### **Optional Visual Aids**

- Diagram showing use case calling repositories and entities.
- Example Dart class implementing a single use case.

### **Tags**

- lives:domain → Core business logic lives in the domain layer.
- coordination, decouple, integrity → Coordinates domain operations, decouples from UI/data, ensures correctness.
- self-contained, pure → Can be tested independently; ideally pure logic.
- feature, layer → Applied at feature-level or across layers.

---

## **Dependency Inversion**

**Video Title:** _Conceptual Short: Dependency Inversion_

**Duration:** 6–8 minutes

### **Outline of Topics to Cover**

1. **Introduction (1–2 min)**

   - Principle: depend on abstractions, not concrete implementations.
   - Motivates flexible, testable code.

2. **Implementation (2–3 min)**

   - Interfaces or abstract classes for dependencies.
   - Concrete classes injected via constructor or DI container.

3. **Benefits (2–3 min)**

   - Easier swapping of implementations.
   - Supports testing with mocks or fakes.

4. **Summary / Takeaways (1 min)**

   - Reduces coupling and increases maintainability.

---

### **Optional Visual Aids**

- Diagram showing high-level dependency graph using interfaces.
- Dart example with constructor injection of abstract types.

### **Tags**

- lives:domain, lives:presentation, lives:data → Can be applied in all layers where abstraction improves decoupling.
- decouple, coordination, self-contained → Reduces coupling, coordinates dependencies, isolates modules.
- feature, layer → Feature-level or system-wide use.
- knows:infrastructure → Abstracts infrastructure details behind interfaces.

---

## **Hexagonal / Ports & Adapters**

**Video Title:** _Conceptual Short: Hexagonal Architecture / Ports & Adapters_

**Duration:** 8–10 minutes

### **Outline of Topics to Cover**

1. **Introduction (1–2 min)**

   - Core idea: isolate core logic from external frameworks and APIs.
   - Terminology: ports (interfaces), adapters (concrete implementations).

2. **Implementation Concepts (3–4 min)**

   - Core domain defines ports (interfaces).
   - Adapters implement ports for UI, DB, APIs, or external services.

3. **Benefits (2–3 min)**

   - Allows changing external dependencies without touching core logic.
   - Improves testability and maintainability.

4. **Summary / Takeaways (1 min)**

   - Ports & adapters provide flexibility and separation between domain and infrastructure.

---

### **Optional Visual Aids**

- Diagram showing core domain, ports, and adapters.
- Dart example with interface for repository and adapter implementing it.

### **Tags**

- lives:domain, lives:data, lives:presentation → Core logic in domain; adapters connect to data or UI layers.
- decouple, coordination, integrity → Decouples core logic from infrastructure, coordinates operations, ensures correctness.
- self-contained → Core domain remains isolated.
- feature, layer → Applied at feature or layer boundaries.
- knows:infrastructure, knows:ui-framework → Adapters bridge core logic to infrastructure or UI.

---

## **Layered Architecture vs Monoliths**

**Video Title:** _Conceptual Short: Layered Architecture vs Monoliths_

**Duration:** 8–10 minutes

### **Outline of Topics to Cover**

1. **Introduction (1–2 min)**

   - Define layered architecture.
   - Contrast with monolithic, unstructured code.

2. **Layer Benefits (3–4 min)**

   - Clear boundaries between presentation, domain, and data.
   - Easier testing, debugging, and collaboration.

3. **Monolith Risks (2–3 min)**

   - Tight coupling, hard to scale, fragile code.

4. **Summary / Takeaways (1 min)**

   - Clear layer boundaries improve maintainability and scalability.
   - Layered architecture is not just structural—supports separation of concerns and testability.

---

### **Optional Visual Aids**

- Diagram comparing layered architecture vs a tangled monolith.
- Example showing data flow across layers in a structured project.

### **Tags**

- lives:presentation, lives:domain, lives:data → Applies across all layers.
- decouple, coordination, integrity → Enforces separation and maintainable interactions.
- self-contained → Each layer encapsulates its responsibilities.
- feature, layer, system → Applicable feature-level or system-wide.

---
