# State

An example of the objects-for-states design pattern written in objective-c

## Running the StateExample app
1. Verify that you are running Xcode 4.3 or higher.
2. Open the State file in Finder.
3. Run the Xcode project file.
4. Double-click the run/play button in the upper-left corner of the Xcode interface.
5. Wait forever for the iOS simulator to load.

## Using the StateExample app
1. Select the text-transformation mode at the top of the screen.
2. Press the "Done" button to transform textfield strings in accordance with the current mode.

## Objects-For-States Overview

### Definition
> "The state pattern, which closely resembles Strategy Pattern, is a behavioral software design pattern, also known as the objects for states pattern. This pattern is used in computer programming to encapsulate varying behavior for the same routine based on an object's state object. This can be a cleaner way for an object to change its behavior at runtime without resorting to large monolithic conditional statements."

>Erich Gamma; Richard Helm, Ralph Johnson, John M. Vlissides (1995). Design Patterns: Elements of Reusable Object-Oriented Software. Addison-Wesley. ISBN 0-201-63361-2

This pattern allows program features to seamlessly change behavior at runtime by swapping back and forth between different forms of a common routine. Typically this is achieved by defining a class to represent the current state, which maintains a pointer to any one of a set of subclasses. These subclasses define the different sets of behaviors the current state may exhibit.

### Advantages
- Explicit declaration and encapsulation of state makes reading code much easier
- Encapsulation of state preserves state integrity. Instead of "deducing" a state via complex conditional statements, potentially arriving at an invalid state, state is defined in discrete sets of behaviors.

### Disadvantages
- It is often difficult to decide what objects should have control over the current state.
  - If this logic is placed in the object representing the current state (and not in the individual state objects) it may become tedious to implement new states and their transitions.
  - If this logic is placed in the state objects themselves, states will become dependent on one another.
- This design pattern is not well-suited to cases where a routine does not have easily-defined, discrete states. In these cases, this pattern only introduces complexity.  

### Related Patterns
- [Strategy](https://github.com/jeffweiss/intern-design-patterns/tree/master/Strategy): This pattern allows swapping between different algorithms in a manner resembling objects-for-states.
- [Delegate](http://en.wikipedia.org/wiki/Delegation_pattern): The objects-for-states pattern is based on the idea of delegating the work of the current state class to one of its subclasses.