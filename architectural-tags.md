## **1. Layer / Location**

Where this lives in your system.

**Tags:**

- Presentation (UI, widgets, view models)
- Domain (business rules, entities, aggregates, use cases)
- Data (repositories, APIs, databases)
- Cross-cutting (logging, error handling, caching, utilities)
- Infrastructure (external frameworks, system integration, file/network access)

---

## **2. Purpose / Goal**

What problem it solves.

**Tags:**

- Encapsulate behavior / hide complexity
- Orchestrate multiple objects
- Coordinate state / events
- Enforce business rules / consistency
- Decouple layers / reduce dependencies
- Simplify usage for developers
- Cache or store data
- Transform / adapt interfaces

---

## **3. Dependencies**

What it can safely rely on.

**Tags:**

- Domain objects only
- Other domain services
- Repositories / data sources
- UI or presentation elements
- External systems / frameworks
- No dependencies (fully pure / self-contained)

---

## **4. Lifecycle / Scope**

How long the object or pattern lives.

**Tags:**

- Per call / temporary
- Per feature / screen
- Per session / user session
- Singleton / global
- Event-driven / reactive

---

## **5. Reusability**

How broadly it can be reused.

**Tags:**

- Feature-specific
- Layer-wide
- Cross-feature
- System-wide

---

## **6. Side Effects / Purity**

Whether it changes state, performs I/O, or is purely computational.

**Tags:**

- Pure / no side effects
- Mutates internal state only
- Performs I/O (network, database, file system)
- Coordinates side effects but does not perform business logic

---

## **7. Constraints / Rules**

What rules or limitations apply.

**Tags:**

- Must maintain invariants / rules
- Must not depend on UI
- Must not access repositories directly
- Should only orchestrate / delegate
- Must avoid global state
- Can depend on domain objects or services

---

## **8. Trade-offs / Pros / Cons**

Simple, practical benefits and drawbacks.

**Tags (Pros):**

- Simplifies usage
- Reduces coupling
- Improves testability
- Improves maintainability
- Ensures consistency

**Tags (Cons):**

- Adds indirection / extra layer
- Requires upfront design
- Slightly harder for beginners to understand
- Potential for overengineering

### **Expanded Tag List**

**Location / Layer (where it lives or is used)**

```
lives:presentation, lives:domain, lives:data, lives:infrastructure, used:cross-cutting, used:feature, used:layer, used:system
```

**Purpose / Behavior (what it does)**

```
encapsulation, coordination, rule, decouple, sugar, integrity, transform, filter, expand, merge, orchestrate, validate, compute, cache, adapt
```

**Knowledge / Imports (what it can know about / reference)**

```
knows:ui-framework, knows:infrastructure, knows:data, knows:domain, knows:external, self-contained
```

**Side Effects / Purity (state and I/O characteristics)**

```
pure, mutates, side-effect, self-contained
```

**Scope / Reusability (how broadly it can be used)**

```
feature, layer, system, global, singleton, per-call, per-instance, per-session, per-event
```

**Constraints / Rules (what it must respect or enforce)**

```
must-not-depend-on-ui, must-not-access-repositories, must-maintain-invariants, must-orchestrate, must-delegate, must-not-use-global-state
```

---

### **Notes on this expanded list**

1. **Scopes are prefixes**: `lives:`, `used:`, `knows:`, `must:` — makes them **reusable and filterable**.
2. **Behavior tags** cover a wider set of common actions in domain/presentation/data layers: `validate`, `compute`, `cache`, `adapt`, `orchestrate`.
3. **Side effects / purity** distinguishes objects that mutate, are pure, or completely self-contained.
4. **Scope / reusability** now includes lifecycle and instance-level tags (`per-call`, `per-instance`, `singleton`).
5. **Constraints** are explicit, so developers can quickly see **what rules the object must obey** without remembering abstract terms.

---

If you want, I can **take this expanded tag set and start assigning them to all patterns and objects we’ve discussed** (Aggregate Root, Bloc, Repository, Facade, etc.) so you have a full, tagged reference ready for your course.

Do you want me to do that next?
