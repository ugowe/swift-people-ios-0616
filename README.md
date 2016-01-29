# Swift — People

## Objectives

1. Create a new class with readonly properties (private setters), an optional property, and a calculated property.
2. Write a designated initializer, convenience initializer, and default initializer that are correctly related.
3. Write internally-visible methods that provide controller interaction with the readonly properties.

##### Advanced

4. Use a set as a property when handling a collection of unique values.

## Instructions

Open the `swift-people.xcworkspace` file. 

### I. Create the File, Class, and Properties

Generate a new Swift file for the `Person` class.

Declare the `Person` class with four **readonly** properties:

  * `name`, an immutable `String`,
  * `ageInYears`, a mutable `Int` optional,
  * `skills`, an empty mutable `Array` of `String`s,
  * `qualifiedTutor`, a calculated property of type `Bool` that, for now, simply returns `false`.

### II. Write the Initializers

1. Write a designated initializer that takes values for the `name` and `ageInYears` properties. **Top-tip:** *Remember that* `ageInYears` *is an optional property.*

2. Write a convenience initializer that takes an argument for `name`, but not `ageInYears`. This should call the designated initializer with a `nil` value for `ageInYears`, since no information was collected for it.

3. Write a default initializer that calls the designated initializer to set the `name` property to `"John Doe"` and `ageInYears` to `nil`.

### III. `celebrateBirthday()`

1. Review the provided method in the `Int+Ordinal.swift` file. This contains an extension of the `Int` class that returns a two-letter string associated to the integer's pronunciation (called an "ordinal"). You will need to use this method to solve this challenge.

2. Write a method named `celebrateBirthday()` that returns a `String`. If the `ageInYears` property contains `nil`, it should return a happy-birthday message with the person's name formatted like this for Jenny:
  * `HAPPY BIRTHDAY, JENNY!!!`  
  **Hint:** *Make sure to upcase the person's name.*
  
3. However, if `ageInYears` contains an integer value (not `nil`), this method should add one to the `ageInYears` property, determine the ordinal for the property's new value, and then return a string that, for Mark's 30th birthday, would read:
  * `HAPPY 30TH BIRTHDAY, MARK!!!`  
  **Hint:** *You will need to upcase both the ordinal and name.*

### IV. `learnSkill...` Methods

Now, write a series of five methods that add a specific string (each representing a different programming skill) to the person's `skills` property. You will need to protect against duplicating the entries and there are two ways to do this:

1. Use an `if` statement to check if the skill is already in the `skills` array (i.e. use the `.contains()` method which returns a `Bool`).
2. (**Advanced**) Convert the `skills` array to a set of type `String` instead. Sets implicitly require uniqueness of their collected values, so a duplicate addition will actually cause no change.
  * **Hint:** *To initialize an empty set, use the syntax:* `Set<Type>()`.  
  * **Hint:** *To add an element to a set, use the* `.insert(Element)` *method.*

The five methods you should write, with no arguments and no returns, along with their associated strings to add to the person's skills are:

Method Name              | Skill String
-------------------------|-------------
`learnSkillBash()`       | `"bash"`
`learnSkillXcode()`      | `"Xcode"`
`learnSkillObjectiveC()` | `"Objective-C"`
`learnSkillSwift()`      | `"Swift"`
`learnSkillInterfaceBuilder()` | `"Interface Builder"`

### V. Redefine the `qualifiedTutor` Property

We want to allow our experienced `Person`s to help out those who are just starting out. Make the `qualifiedTutor` calculated property return `true` if the person knows at least four (4) skills.  
**Top-tip:** *Avoid using an* `if` *statement for this, remember that comparison operators return booleans.*

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/swift-people' title='Swift People'>Swift People</a> on learn.co and start learning to code for free.
