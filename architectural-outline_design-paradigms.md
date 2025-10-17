## **Singleton Pattern**

**Video Title:** _Conceptual Short: Singleton Pattern_

**Duration:** 6–8 minutes

### **Outline of Topics to Cover**

1. **Introduction (1–2 min)**

   - What a singleton is: a single globally accessible instance.
   - Why and when singletons are useful.

2. **Implementation (2–3 min)**

   - Dart examples: using `static` fields, private constructors.
   - Thread-safety considerations.

3. **Pros and Cons (1–2 min)**

   - Pros: controlled access, single source of truth.
   - Cons: global state, harder testing, potential anti-pattern if overused.

4. **Practical Use Cases (1–2 min)**

   - Logging, configuration, shared services.

5. **Summary / Takeaways (1 min)**

   - Singleton ensures only one instance exists.
   - Useful for shared resources but use sparingly.

---

### **Optional Visual Aids**

- Diagram showing a single instance shared across components.
- Example Dart code highlighting private constructor and static access.

### **Tags**

- lives:infrastructure, used:cross-cutting → Singletons are often used for shared resources and cross-cutting services.
- self-contained, global → Only one instance exists and is globally accessible.
- coordination → Coordinates access to shared resources.
- feature, layer → Can be applied at feature-level services or application-wide.
- knows:infrastructure → Can interact with system-level services like logging or configuration.

---

## **Factory Pattern**

**Video Title:** _Conceptual Short: Factory Pattern_

**Duration:** 6–8 minutes

### **Outline of Topics to Cover**

1. **Introduction (1–2 min)**

   - Definition: delegating object creation to a method or class.
   - Motivation: decoupling construction from use.

2. **Implementation (2–3 min)**

   - Dart example: factory constructors, abstract factory classes.
   - Dynamic creation of objects based on input or context.

3. **Practical Use Cases (1–2 min)**

   - Creating objects from JSON, platform-specific implementations, or configuration.

4. **Summary / Takeaways (1 min)**

   - Factory pattern abstracts creation logic.
   - Promotes decoupling and maintainable code.

---

### **Optional Visual Aids**

- Diagram showing client code requesting objects through a factory.
- Dart code using `factory` constructors and abstract factories.

### **Tags**

- lives:domain, lives:data, used:cross-cutting → Used wherever object creation needs to be decoupled from usage.
- encapsulation, decouple, transform → Encapsulates creation, decouples clients, transforms input into objects.
- self-contained → Factory encapsulates all creation logic.
- feature, layer → Can be applied feature-wide or across layers.

---

## **Observer Pattern**

**Video Title:** _Conceptual Short: Observer Pattern_

**Duration:** 7–9 minutes

### **Outline of Topics to Cover**

1. **Introduction (1–2 min)**

   - Definition: decoupling event producers from consumers through subscriptions.
   - Why decoupling is important for maintainable code.

2. **Implementation (3–4 min)**

   - Dart examples: `Stream`, `StreamController`, Bloc pattern.
   - Subscribing and notifying listeners.

3. **Practical Use Cases (1–2 min)**

   - UI updates on state change, reactive programming patterns.

4. **Summary / Takeaways (1 min)**

   - Observers allow multiple consumers to react to events independently.
   - Supports scalable and decoupled architecture.

---

### **Optional Visual Aids**

- Diagram of producer emitting events to multiple observers.
- Example with `StreamController` notifying subscribers.

### **Tags**

- lives:presentation, lives:domain, used:cross-cutting → Observer pattern is applied in UI, state, and cross-cutting components.
- coordination, decouple → Coordinates events while decoupling producers and consumers.
- transform, expand, merge → Event streams can be transformed or combined.
- self-contained → Observer only handles subscription logic.
- feature, layer → Useful at feature level or across layers.

---

## **Strategy Pattern**

**Video Title:** _Conceptual Short: Strategy Pattern_

**Duration:** 6–8 minutes

### **Outline of Topics to Cover**

1. **Introduction (1–2 min)**

   - Definition: swapping behavior dynamically without changing client code.
   - Motivation: flexibility and reusability.

2. **Implementation (2–3 min)**

   - Dart example: defining strategy interfaces and concrete implementations.
   - Passing strategies to classes or functions.

3. **Practical Use Cases (1–2 min)**

   - Sorting algorithms, payment processors, logging strategies.

4. **Summary / Takeaways (1 min)**

   - Strategy pattern promotes flexible and interchangeable behavior.
   - Supports clean and maintainable code.

---

### **Optional Visual Aids**

- Diagram showing context object using interchangeable strategies.
- Dart example with interface and multiple implementations.

### **Tags**

- lives:domain, lives:presentation → Strategy can be applied to business logic and UI behavior.
- decouple, coordination, self-contained → Separates behavior from client, allows swapping dynamically.
- feature, layer → Applied at feature-level or across layers.
- transform → Behavior can be transformed by swapping strategies.

---
