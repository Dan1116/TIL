# Python
* Computation 
* Declarative 
* Imperative
* type checking 
* statement : legal commands that python can interpret (print, assignment)
* branching programs - something that can change order or instruction base on some test, test is usually value of variable 
* flow chart
* float = floating point 
* 1 <= mantissa < 2
* mantissa exponent  -> -1022 : 1023

![](Python/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-02-12%20%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE%204.59.12.png)


![](Python/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-02-12%20%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE%204.44.57.png)


![](Python/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-02-13%20%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE%201.56.05.png)


![](Python/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-02-13%20%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE%203.52.25.png)


![](Python/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-02-13%20%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE%204.06.33.png)


![](Python/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-02-21%20%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE%203.36.21.png)


![](Python/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-02-21%20%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE%203.32.00.png)


# Advantages of OOP
* bundle data into packages together with procedures that work on them through work on them through well defined interfaces
* divide and conquer development 
* implement and test behavior of each class separately 
* increased modularity reduces complexity
* classes make it easy to reuse code
* many python modules define new classes
* each class has a separate environment 
* inheritance allows subclasses to redefine or extend a selected subset of a superclass behavior

# The power of OOP
* bundle together objects that share
* common attributes and procedures that operate on those attributes
* use abstraction to make a distinction between how to implement an object vs how to use the object
* build layers of object abstractions that inherit behaviors from other classes of objects
* create our own classes of objects on top of python’s basic classes

# Class of objects
* class name is the type
* class defines data and methods common across all instances

# Instance of a Class
* instance is one specific object
* instance has the structure of the class

# OOP and classes of objects
* group different objects part of the same type

# Getter and Setter Methods
* getters and setters should be used outside of class to access data attributes

# An instance and dot notation
* instantiation creates an instance of an object
* dot notation used to access attributes though it is better to use getters and setters to access data arrtibutes

# Information hiding
* If you are accessing data attributes outside the class and class definition change may get errors

# Python is not good at information hiding
* allows you to access data from outside class definition
* allows you to write to data from outside class definition
* allows you to create data attributes for an instance from outside class definition

# Subclass, Superclass
* subclass can have methods with same name as superclass
* for an instance of a class, look for a method name in current class definition

# Object Oriented Programming
* create your own collections of data
* organize information
* division of work
* access information in a consistent manner
* add layers of complexity
* like functions, classes are a mechanism for decomposition and abstraction in programming

# How to evaluate efficiency of programs
* measure with a timer
* count the operations
* abstract notion of order of growth
