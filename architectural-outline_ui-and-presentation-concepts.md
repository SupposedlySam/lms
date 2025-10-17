## **Declarative UI Concept**

**Video Title:** _Conceptual Short: Declarative UI Concept_

**Duration:** 6–8 minutes

### **Outline of Topics to Cover**

1. **Introduction (1–2 min)**

   - Define declarative UI: describing _what_ should be displayed rather than _how_ to render it.
   - Contrast with imperative UI updates.

2. **Implementation Concept (2–3 min)**

   - Flutter’s widget tree as a declarative structure.
   - State drives the UI; framework handles rendering.

3. **Benefits (2–3 min)**

   - Clearer intent, easier reasoning, and maintainable UI.
   - Reduces side-effects and direct DOM manipulations (or widget tree mutations).

4. **Summary / Takeaways (1 min)**

   - Declarative UI separates intent (state) from implementation (widgets).
   - Enables predictable and composable interfaces.

---

### **Optional Visual Aids**

- Comparison of imperative vs declarative UI in Dart/Flutter.
- Diagram of widget tree representing declarative structure.
- Animation showing state change triggering UI updates.

### **Tags**

- lives:presentation → Declarative UI is a presentation layer concept.
- pure, self-contained → Widgets describe output without directly mutating state.
- coordination, decouple → Separates intent from implementation.
- feature, layer → Applies at feature-level UI components.
- knows:ui-framework → Concept tied to Flutter’s declarative widget system.

---

## **Widget Composition Principles**

**Video Title:** _Conceptual Short: Widget Composition Principles_

**Duration:** 6–8 minutes

### **Outline of Topics to Cover**

1. **Introduction (1–2 min)**

   - Breaking UI into small, reusable components.
   - Improves clarity, maintainability, and testability.

2. **Implementation Concept (3–4 min)**

   - Using stateless and stateful widgets effectively.
   - Extracting common functionality into reusable widgets.

3. **Benefits (1–2 min)**

   - Easier debugging, modularity, and consistent design patterns.

4. **Summary / Takeaways (1 min)**

   - Composition encourages readable and maintainable UI code.
   - Small widgets are easier to test and reuse across the app.

---

### **Optional Visual Aids**

- Example widget tree showing composed widgets.
- Highlighting reusable UI components with colors or overlays.
- Diagram illustrating composition hierarchy.

### **Tags**

- lives:presentation → Widget composition is purely a UI concept.
- self-contained, feature → Each widget is an isolated unit.
- coordination → Composed widgets coordinate to form complete UI.
- decouple → Reduces interdependence between UI elements.
- knows:ui-framework → Flutter-specific concept.

---

## **Coordinating UI and State**

**Video Title:** _Conceptual Short: Coordinating UI and State_

**Duration:** 6–8 minutes

### **Outline of Topics to Cover**

1. **Introduction (1–2 min)**

   - State represents _intent_, UI executes _implementation_.
   - Why separating responsibilities is important.

2. **Implementation Concept (3–4 min)**

   - UI subscribes/reacts to state changes (Bloc, Provider, Riverpod).
   - State does not directly manipulate UI elements.

3. **Benefits (1–2 min)**

   - Predictable updates, easier testing, and maintainable code.

4. **Summary / Takeaways (1 min)**

   - Clear separation ensures state is the source of truth.
   - UI remains declarative and reactive.

---

### **Optional Visual Aids**

- Diagram showing state emitting values, UI reacting accordingly.
- BlocBuilder or StreamBuilder example highlighting separation.
- Example comparing correct separation vs anti-pattern of state updating UI directly.

### **Tags**

- lives:presentation, lives:domain → State is domain logic; UI is presentation.
- coordination, decouple → State coordinates intent; UI is decoupled from direct logic.
- self-contained, integrity → Each layer maintains its own correctness.
- feature, layer → Applies at feature-level or system-wide.
- knows:ui-framework → Flutter-specific reactive pattern.

---

## **Controller Separation**

**Video Title:** _Conceptual Short: Controller Separation_

**Duration:** 5–6 minutes

### **Outline of Topics to Cover**

1. **Introduction (1–2 min)**

   - Concept: lifecycle-managed objects (TextEditingController, ScrollController, FocusNode) belong in UI, not state logic.
   - Why mixing controllers into state management is problematic.

2. **Implementation Concept (2–3 min)**

   - UI widgets create and dispose of controllers.
   - State only holds data; UI handles framework-managed objects.

3. **Summary / Takeaways (1 min)**

   - Controllers are tied to the widget lifecycle, not domain logic.
   - Separating responsibilities improves maintainability and avoids memory leaks.

---

### **Optional Visual Aids**

- Example Flutter widget showing controller creation and disposal.
- Diagram showing separation between state layer and UI layer objects.

### **Tags**

- lives:presentation → Controllers are purely presentation layer concerns.
- self-contained, decouple → Lifecycle objects isolated to UI; state remains independent.
- coordination → UI coordinates controller usage without mixing with domain logic.
- feature, layer → Feature-level UI responsibility.
- knows:ui-framework → Tied to Flutter-specific widget lifecycle management.

---
