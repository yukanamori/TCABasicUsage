# TCABasicUsage

[The Composable Architecture](https://github.com/pointfreeco/swift-composable-architecture)

## What is the Composable Architecture?

This library provides a few core tools that can be used to build applications of varying purpose and complexity. It provides compelling stories that you can follow to solve many problems you encounter day-to-day when building applications, such as:

- **State management**  
How to manage the state of your application using simple value types, and share state across many screens so that mutations in one screen can be immediately observed in another screen.

- **Composition**  
How to break down large features into smaller components that can be extracted to their own, isolated modules and be easily glued back together to form the feature.

- **Side effects**  
How to let certain parts of the application talk to the outside world in the most testable and understandable way possible.

- **Testing**  
How to not only test a feature built in the architecture, but also write integration tests for features that have been composed of many parts, and write end-to-end tests to understand how side effects influence your application. This allows you to make strong guarantees that your business logic is running in the way you expect.

- **Ergonomics**  
How to accomplish all of the above in a simple API with as few concepts and moving parts as possible.

## Overview

![tca](./img/tca.drawio.png)
