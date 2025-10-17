## **Identifying and Fixing Common OOP Antipatterns**

**Video Title:** _Conceptual Short: Identifying and Fixing Common OOP Antipatterns_

**Duration:** 15–18 minutes

### **Outline of Topics to Cover**

1. **Introduction (2 min)**

   - What are antipatterns: common but problematic solutions to recurring problems.
   - Why learning to identify antipatterns is crucial for maintainable architecture.
   - Overview: We'll cover 4 major antipatterns and their solutions.

2. **Antipattern #1: Switch Statements on Types (4–5 min)**

   - **The Problem**: Switch statements scattered throughout codebase based on object types/enums.
   - **Why It's Bad**: Violates Open/Closed Principle, no compile-time safety, tight coupling.
   - **Code Example**: Shape enum with switch statements for area calculation, drawing, description.
   - **The Fix**: Replace with polymorphism - abstract base class with concrete implementations.
   - **Before/After**: Show transformation from switch-heavy to polymorphic design.
   - **Key Insight**: "Tell, don't ask" - let objects handle their own behavior.

3. **Antipattern #2: God Objects/Classes (3–4 min)**

   - **The Problem**: Single class handling too many unrelated responsibilities.
   - **Why It's Bad**: Hard to maintain, test, understand; changes break unrelated functionality.
   - **Flutter Example**: A single Bloc managing user auth, shopping cart, notifications, and settings.
   - **The Fix**: Apply Single Responsibility Principle - split into focused, cohesive objects.
   - **Refactoring Strategy**: Identify distinct responsibilities and extract them into separate classes.

4. **Antipattern #3: Primitive Obsession (2–3 min)**

   - **The Problem**: Using primitive types (String, int) instead of domain objects.
   - **Why It's Bad**: No type safety, scattered validation, unclear intent.
   - **Example**: Using `String` for email addresses, user IDs, phone numbers everywhere.
   - **The Fix**: Create value objects with encapsulated validation and behavior.
   - **Benefits**: Compile-time safety, centralized validation, clear domain modeling.
   - **Key Insight**: If it has business meaning beyond its primitive type, make it a value object.

5. **Antipattern #4: Anemic Domain Models (2–3 min)**

   - **The Problem**: Objects with only getters/setters, no behavior - just data containers.
   - **Why It's Bad**: Business logic scattered in service classes, violates encapsulation.
   - **Example**: `User` class with only properties, all logic in `UserService`.
   - **The Fix**: Move behavior into domain objects where it belongs.
   - **Rich vs Anemic**: Show transformation from data-only to behavior-rich objects.

6. **Identification Strategies (1–2 min)**

   - **Code Smells to Watch For**: Long parameter lists, deep inheritance, feature envy, data clumps.
   - **Questions to Ask**: "Does this class have a single responsibility?" "Am I asking objects about their type?"
   - **Refactoring Mindset**: Start small, extract methods first, then extract classes.

7. **Summary / Takeaways (1 min)**

   - Antipatterns are learning opportunities, not failures.
   - Most antipatterns violate fundamental OOP principles (SRP, Open/Closed, Tell Don't Ask).
   - Regular refactoring prevents antipatterns from accumulating.
   - Good architecture emerges from consistently applying OOP principles.

---

### **Optional Visual Aids**

- Side-by-side code comparisons showing before/after transformations.
- Diagram showing switch statement elimination through polymorphism.
- Class responsibility diagrams showing God Object vs focused objects.
- UML showing anemic vs rich domain models.
- Flowchart for identifying common antipatterns in existing code.

### **Tags**

- lives:presentation, lives:domain, lives:data → Antipatterns can appear in any layer.
- decouple, coordination, integrity → Fixing antipatterns improves separation and maintainability.
- self-contained, pure → Encourages isolated, focused objects with clear responsibilities.
- feature, layer → Antipatterns affect both feature-level and system-wide architecture.
- knows:ui-framework → Flutter-specific examples of antipatterns and solutions.

---

## **God Blocs / God Objects**

**Video Title:** _Conceptual Short: God Blocs / God Objects_

**Duration:** 6–8 minutes

### **Outline of Topics to Cover**

1. **Introduction (1–2 min)**

   - Define “God Bloc” or “God Object”: an object or Bloc handling too many responsibilities.
   - Why this is considered an anti-pattern.

2. **Consequences (2–3 min)**

   - Hard to maintain, test, or reason about.
   - Changes in one area can break unrelated functionality.

3. **Best Practices (2–3 min)**

   - Split responsibilities into smaller, focused Blocs or objects.
   - Apply single responsibility principle.

4. **Summary / Takeaways (1 min)**

   - Avoid centralizing unrelated logic.
   - Smaller, cohesive objects improve maintainability and testability.

---

### **Optional Visual Aids**

- Diagram showing a God Bloc with many arrows vs multiple focused Blocs.
- Example Dart/Flutter code demonstrating refactoring into smaller Blocs.

### **Tags**

- lives:presentation, lives:domain → Relevant where state and business logic are concentrated.
- decouple, coordination → Encourages separating responsibilities and coordinating smaller units.
- integrity, self-contained → Smaller objects maintain correctness independently.
- feature, layer → Applied at feature-level or across layers.

---

## **Coupling UI and State Logic**

**Video Title:** _Conceptual Short: Coupling UI and State Logic_

**Duration:** 6–7 minutes

### **Outline of Topics to Cover**

1. **Introduction (1–2 min)**

   - Explain the problem: mixing widget lifecycle objects with state management.
   - Why this reduces maintainability and increases bugs.

2. **Consequences (2–3 min)**

   - State logic depends on UI implementation details.
   - Hard to test, hard to reuse, and increases risk of memory leaks.

3. **Best Practices (2 min)**

   - Keep lifecycle-managed objects (TextEditingController, FocusNode) in UI layer.
   - State layer should only store pure data.

4. **Summary / Takeaways (1 min)**

   - Maintain clear separation between UI and state logic.
   - Ensures predictable, testable, and reusable code.

---

### **Optional Visual Aids**

- Diagram showing improper coupling vs clean separation.
- Flutter example of controller incorrectly in Bloc vs correct UI-local controller.

### **Tags**

- lives:presentation, lives:domain → Presentation manages lifecycle objects; domain/state manages logic.
- decouple, coordination → Decouples UI from state, coordinates intent and implementation.
- integrity, self-contained → Each layer maintains correctness independently.
- knows:ui-framework → Flutter-specific lifecycle knowledge.
- feature, layer → Feature-level application.

---

## **Single Responsibility Principle (SRP)**

**Video Title:** _Conceptual Short: Single Responsibility Principle_

**Duration:** 6–8 minutes

### **Outline of Topics to Cover**

1. **Introduction (1–2 min)**

   - Define SRP: each object or layer should have only one reason to change.
   - Relation to maintainability and clarity.

2. **Implementation Concept (2–3 min)**

   - Layer-level SRP: presentation handles UI, domain handles business rules, data handles storage.
   - Object-level SRP: classes and Blocs focused on a single task.

3. **Benefits (2–3 min)**

   - Easier testing, easier to understand, easier to extend.
   - Reduces risk of changes impacting unrelated code.

4. **Summary / Takeaways (1 min)**

   - Apply SRP consistently across layers and objects.
   - Foundation for maintainable, modular architecture.

---

### **Optional Visual Aids**

- Diagram showing multiple objects each with a single responsibility.
- Example Dart code demonstrating a class following SRP vs a God Object.

### **Tags**

- lives:presentation, lives:domain, lives:data → SRP applies across all layers.
- decouple, coordination → Encourages decoupled, coordinated responsibilities.
- integrity, self-contained → Each module/object maintains correctness independently.
- feature, layer → Feature-level or system-wide use.

---

## **Testability Principles**

**Video Title:** _Conceptual Short: Testability Principles_

**Duration:** 6–8 minutes

### **Outline of Topics to Cover**

1. **Introduction (1–2 min)**

   - Why designing for testability is important.
   - Conceptual boundaries improve testing simplicity.

2. **Key Concepts (3–4 min)**

   - Isolate pure logic from UI.
   - Use abstractions and dependency inversion.
   - Avoid tight coupling to external frameworks or lifecycle-managed objects.

3. **Benefits (1–2 min)**

   - Easier unit and integration testing.
   - More confidence in changes and refactoring.

4. **Summary / Takeaways (1 min)**

   - Design boundaries with testability in mind.
   - Clean architecture and SRP support testable code.

---

### **Optional Visual Aids**

- Diagram showing testable boundaries between UI, state, and domain.
- Example Dart unit test for a use case without UI dependencies.

### **Tags**

- lives:domain, lives:presentation → Testability spans both logic and UI components.
- decouple, self-contained, pure → Promotes isolated, testable, side-effect-free units.
- integrity, coordination → Ensures correctness while coordinating dependencies safely.
- feature, layer → Applies at feature-level or system-wide.
- knows:ui-framework, knows:infrastructure → Tests require knowledge of boundaries without depending on framework.

---
