# Design Patterns by The Gang of Four - using Swift for iOS

Christopher Alexander says, "Each pattern describes a problem which occurs over
and over again in our environment, and then describes the core of the solution
to that problem, in such a way that you can use this solution a million times
over, without ever doing it the same way twice" [AIS+77]

Design Patters are the solutions of our programmers implementation problems. 
In this Branch, I will try to illustrate all 23 original design patters provided by "The Gang of Four".

## "The Gang of Four" are:
- **Erich Gamma**
- **Richard Helm**
- **Ralph Johnson**
- **John Vlissides**


Few references for better understanding.

### A pattern has four essential elements: 
1. The ***pattern name*** is a handle we can use to describe a design problem, its solutions, and consequences in a word or two. Naming a pattern immediately increases our design vocabulary. It lets us design at a higher level of abstraction. Having a vocabulary for patterns lets us talk about them with our colleagues, in our documentation, and even to ourselves. It makes it easier to think about designs and to communicate them and their trade-offs to others. Finding good names has been one of the hardest parts of developing our catalog.
2. The ***problem*** describes when to apply the pattern. It explains the problem and its context. It might describe specific design problems such as how to represent algorithms as objects. It might describe class or object structures that are symptomatic of an inflexible design. Sometimes the problem will include a list of conditions that must be met before it makes sense to apply the pattern.
3. The ***solution*** describes the elements that make up the design, their relationships, responsibilities, and collaborations. The solution doesn't describe a particular concrete design or implementation, because a pattern is like a template that can be applied in many different situations. Instead, the pattern provides an abstract description of a design problem and how a general arrangement of elements (classes and objects in our case) solves it.
4. The ***consequences*** are the results and trade-offs of applying the pattern. Though consequences are often unvoiced when we describe design decisions, they are critical for evaluating design alternatives and for understanding the costs and benefits of applying the pattern. The consequences for software often concern space and time trade-offs. They may address language and implementation issues as well. Since reuse is often a factor in object-oriented design, the consequences of a pattern include its impact on a system's flexibility, extensibility, or portability. Listing these consequences explicitly helps you understand and evaluate them. 

### This Repo contains 23 Design Patterns implementation:
- **Abstract Factory**
	- Provide an interface for creating families of related or dependent objects without specifying their concrete classes.
- **Adapter**
	- Convert the interface of a class into another interface clients expect. Adapter lets classes work together that couldn't otherwise because of incompatible interfaces.
- **Bridge**
	- Decouple an abstraction from its implementation so that the two can vary independently.
- **Builder**
	- Separate the construction of a complex object from its representation so that the same construction process can create different representations.
- **Chain of Responsibility**
	- Avoid coupling the sender of a request to its receiver by giving more than one object a chance to handle the request. Chain the receiving objects and pass the request along the chain until an object handles it.
- **Command**
	- Encapsulate a request as an object, thereby letting you parameterize clients with different requests, queue or log requests, and support undoable operations.
- **Composite**
	- Compose objects into tree structures to represent part-whole hierarchies. Composite lets clients treat individual objects and compositions of objects uniformly.
- **Decorator**
	- Attach additional responsibilities to an object dynamically. Decorators provide a flexible alternative to subclassing for extending functionality.
- **Facade**
	- Provide a unified interface to a set of interfaces in a subsystem. Facade defines a higher-level interface that makes the subsystem easier to use.
- **Factory Method**
	- Define an interface for creating an object, but let subclasses decide which class to instantiate. Factory Method lets a class defer instantiation to subclasses.
- **Flyweight**
	- Use sharing to support large numbers of fine-grained objects efficiently.
- **Interpreter**
	- Given a language, define a represention for its grammar along with an interpreter that uses the representation to interpret sentences in the language.
- **Iterator**
	- Provide a way to access the elements of an aggregate object sequentially without exposing its underlying representation.
- **Mediator**
	- Define an object that encapsulates how a set of objects interact. Mediator promotes loose coupling by keeping objects from referring to each other explicitly, and it lets you vary their interaction independently.
- **Memento**
	- Without violating encapsulation, capture and externalize an object's internal state so that the object can be restored to this state later.
- **Observer**
	- Define a one-to-many dependency between objects so that when one object changes state, all its dependents are notified and updated automatically.
- **Prototype**
	- Specify the kinds of objects to create using a prototypical instance, and create new objects by copying this prototype.
- **Proxy**
	- Provide a surrogate or placeholder for another object to control access to it.
- **Singleton**
	- Ensure a class only has one instance, and provide a global point of access to it.
- **State**
	- Allow an object to alter its behavior when its internal state changes. The object will appear to change its class.
- **Strategy**
	- Define a family of algorithms, encapsulate each one, and make them interchangeable. Strategy lets the algorithm vary independently from clients that use it.
- **Template Method**
	- Define the skeleton of an algorithm in an operation, deferring some steps to subclasses. Template Method lets subclasses redefine certain steps of an algorithm without changing the algorithm's structure.
- **Visitor**
	- Represent an operation to be performed on the elements of an object structure. Visitor lets you define a new operation without changing the classes of the elements on which it operates.
