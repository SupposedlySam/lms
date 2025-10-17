## **Foundation, Design, and Architectural Levels**

**Video Title:** _Conceptual Short: Foundation, Design, and Architectural Levels - Building Software in Layers_

**Duration:** 12–15 minutes

### **Outline of Topics to Cover**

1. **Introduction (2 min)**

   - **Key Concept**: Software architecture operates at three distinct levels of abstraction
   - **Building Analogy**: Foundation (concrete), Design (blueprints), Architecture (city planning)
   - **Why It Matters**: Each level addresses different concerns and time horizons

2. **Foundation Level - Core Programming Concepts (3–4 min)**

   - **What**: Fundamental programming paradigms and object-oriented thinking
   - **Scope**: Individual objects and their basic interactions
   - **Time Horizon**: Rarely changes - bedrock concepts
   - **Core OOP Principles**:
     - **Encapsulation**: Objects protect their internal state
     - **Abstraction**: Objects hide complexity behind simple interfaces
     - **Inheritance**: Objects can extend other objects
     - **Polymorphism**: Objects behave differently while sharing interfaces
   - **Foundation Questions**: "How do I model real-world concepts as objects?"
   - **LMS Example**: `Student` class with encapsulated points, `Video` with polymorphic behavior

3. **Design Level - Class and Component Structure (3–4 min)**

   - **What**: Principles guiding how classes, interfaces, and relationships are structured
   - **Scope**: Classes, interfaces, and their immediate dependencies
   - **Time Horizon**: Guides day-to-day coding decisions
   - **SOLID Principles**:
     - **Single Responsibility**: Each class has one reason to change
     - **Open/Closed**: Open for extension, closed for modification
     - **Liskov Substitution**: Subtypes must be substitutable for base types
     - **Interface Segregation**: Many focused interfaces vs few large ones
     - **Dependency Inversion**: Depend on abstractions, not concretions
   - **Design Questions**: "Is this class doing too many things?" "Can I add functionality without breaking existing code?"
   - **LMS Example**: Separate `VideoRepository`, `VideoPurchaseValidator`, `VideoPurchasePolicy` classes

4. **Architectural Level - System Structure and Patterns (3–4 min)**

   - **What**: High-level patterns guiding overall system organization
   - **Scope**: Entire applications, major subsystems, cross-cutting concerns
   - **Time Horizon**: Long-term impact, harder to change
   - **Key Patterns**:
     - **Clean Architecture**: Dependencies point inward toward business logic
     - **Separation of Concerns**: Different responsibilities in different layers
     - **Domain-Driven Design**: Model business domain explicitly
     - **Event-Driven Architecture**: Loose coupling through events
   - **Architectural Questions**: "How should I structure my entire system?" "How will this scale?"
   - **LMS Example**: Presentation → Application → Domain → Infrastructure layers

5. **How Levels Build on Each Other (2 min)**

   - **Foundation → Design → Architecture**: Each level builds on the previous
   - **Example Flow**: OOP objects (Foundation) → SOLID classes (Design) → Clean Architecture layers (Architecture)
   - **Complementary, Not Competing**: All three levels needed for maintainable software
   - **Common Mistakes**:
     - Foundation without Design = Objects that work but are hard to maintain
     - Design without Architecture = Well-designed classes in poorly structured system
     - Architecture without Foundation = Grand plans on shaky technical foundations

6. **Summary / Takeaways (1 min)**

   - **Foundation**: "How do objects work?"
   - **Design**: "How do classes work together?"
   - **Architecture**: "How does the entire system work?"
   - Each level addresses different concerns but all are essential

---

### **Optional Visual Aids**

- Three-tier diagram showing Foundation → Design → Architecture progression
- LMS example showing same concept at all three levels
- Timeline showing different change frequencies for each level
- Building analogy: concrete foundation → room design → city planning

### **Tags**

- lives:domain, lives:presentation, lives:data → Concepts apply across all layers
- coordination, decouple, integrity → Each level contributes to system maintainability
- self-contained, pure → Proper level separation creates focused, testable components
- feature, layer, system → Levels apply from individual features to entire systems

---

## **All OOP Principles - Complete Reference**

**Video Title:** _Conceptual Short: Complete OOP Principles - Foundation to Best Practices_

**Duration:** 15–18 minutes

### **Outline of Topics to Cover**

1. **Introduction (2 min)**

   - **Hierarchy of Principles**: Foundation → Design → Architectural levels
   - **Why So Many**: Each principle addresses different aspects of maintainable code
   - **Key Insight**: Principles work together, not in isolation

2. **Foundation Level - Core OOP (4–5 min)**

   - **Encapsulation = "Information Hiding"**: Protect object's internal state
   - **Abstraction = "Complexity Hiding"**: Hide implementation behind simple interfaces
   - **Inheritance = "Is-A Relationship"**: Share code through hierarchical relationships
   - **Polymorphism = "Same Interface, Different Behavior"**: Uniform interfaces with type-specific behavior
   - **Key Relationships**:
     - Abstraction often enables encapsulation, but not vice versa
     - Inheritance is one way to achieve polymorphism, but not the only way

3. **Design Level - SOLID Principles (4–5 min)**

   - **Single Responsibility**: One reason to change
   - **Open/Closed**: Extend, don't modify
   - **Liskov Substitution**: Substitutable subtypes
   - **Interface Segregation**: Focused interfaces
   - **Dependency Inversion**: Depend on abstractions
   - **LMS Examples**: Separate repositories, policies, validators; payment processor interfaces

4. **Architectural Level - Best Practices (3–4 min)**

   - **Composition Over Inheritance**: "Has-A" vs "Is-A" relationships
   - **Tell, Don't Ask**: Tell objects what to do, don't ask about their state
   - **Law of Demeter**: Only talk to immediate friends
   - **DRY**: Don't Repeat Yourself
   - **YAGNI**: You Aren't Gonna Need It
   - **Key Insight**: These prevent common architectural problems

5. **How Principles Work Together (2 min)**

   - **Foundation** enables object-oriented thinking
   - **SOLID** guides class and interface design
   - **Best Practices** prevent architectural problems
   - **Example**: Encapsulation + Single Responsibility + Tell Don't Ask = maintainable objects

6. **Summary / Takeaways (1 min)**

   - Principles aren't rules to follow blindly - they're tools for better design decisions
   - Following these principles makes code easier to: test, maintain, extend, understand
   - In LMS context: easy to add new content types, payment methods, gamification features

---

### **Optional Visual Aids**

- Hierarchy diagram: Foundation → Design → Architectural principles
- LMS examples showing each principle in action
- Before/after code examples showing principle violations vs proper application
- Principle interaction diagram showing how they work together

### **Tags**

- lives:domain, lives:presentation, lives:data → OOP principles apply across all layers
- coordination, decouple, integrity → Principles work together to create maintainable systems
- self-contained, pure → Encourages focused, testable components
- feature, layer, system → Principles scale from individual features to entire systems

---
