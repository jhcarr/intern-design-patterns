# Design Pattern: Strategy

This java program is an example of a Strategy design pattern.

## Use Case

A user downloads your compression API tool and wants to have the freedom to choose different compression techniques and also make the API extendable for future algorithms.

If they want to extend the API, they will just have to make a new class that implements Compression. Then in main pass in their new compression class when using CompressionContext.
