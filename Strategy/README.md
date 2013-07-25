# Design Pattern: Strategy

This java program is an example of a Strategy design pattern.

Written and compiled by Brian Cain.

## Short Overview of Strategy

Simple Def:

    ￼"The Strategy Pattern defines a family of algorithms, encapsulates each one, and makes them interchangeable. Strategy lets the algorithm vary independently from clients that use it." - Head First Design Patterns

In other words, the Strategy design pattern allows for users to use a large collection of related algorithms which can easily be chosen without the use of large complicated logic branches. This helps abstract the functionality of these algorithms to classes which all implement a method from an interface.

### Problem it Solves

Your API needs to do a lot of operations that require specific algorithms that have different variants of behavior. Instead of having one function with every algorithm contained and a lot of logic branches, this moves each algorithm to its own class.

### Pros and Cons

#### Pros

- Makes code easier to read when dealing with a lot of similar algorithms
- Easy to plug in your own new algorithm
- Can dynamically choose which algorithm to use at run time depending on what's passed into the context
- Use of interface encapsulates functionality, which is better in this case compared to using inheritance which could change functionality, leading us to override the method anyway.

#### Cons

- If you have a lot of algorithms to use, this design pattern will create a lot of extra classes
- All of the algorithms have to fit within the Interface they all implement. If an algorithm differs enough that the interface is not valid to use, the design pattern kind of doesn't work.

### How it fits with related patterns

The Strategy pattern uses composition to determine what algorithm to use at compile time. For example on the example project

    ctx.setCompressionStrategy(new Gzip());

This shows that we are composing the context object with a Gzip class. It doesn't just have to be Gzip, it can be Zip, Rar...or any other class available.

## About Sample Code

The example I used is a simple mock compression API. The user has a family of compression algorithms to choose from by passing in a correct flag. A developer can also choose to write a method and pick the algorithm of choice, or even develop their own algorithm that implements the Compression interface.

Here's the code... *go to code*

### Use Case

A user downloads your compression API tool and wants to have the freedom to choose different compression techniques and also make the API extendable for future algorithms.

If they want to extend the API, they will just have to make a new class that implements Compression. Then in main pass in their new compression class when using CompressionContext.

### Example Output

    :Java --gzip hello.txt test.txt

```
#############################
##File Compression Tool 1.0##
#############################

Received files....
hello.txt
test.txt

User has chosen gzip format.
Compressing file hello.txt...
Compressing file test.txt...
Files saved in archive.gzip
```

## Impressions

This seems like a useful design pattern for keeping code clean and easy to read. It also seems like a great way to make your code easily extendable for others or yourself. It also would be useful when there are a lot of unknowns as to what algorithm might be required before run time.

## Real World API Example

### java.awt
