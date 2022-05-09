# Cinema

In this project, you will use your knowledge of Swift to build an app that displays basic Movie data! We will use everything you’ve learned so far to complete this!

Students who complete this project independently or as a pairing will showcase their understanding of the following principles:

- Basic Storyboard constraints
- Creating Custom `class` objects
- Constants, Variables, and Basic Data Types
- Collections
- Functions
- IBOutlets
- Singletons

---

> **Before we begin, if you have not, please `Fork` and `Clone` the `Cinema` repository. [Stateful Cinema](https://github.com/Stateful-Academy/Cinema).** Once you have forked and cloned this repo please change to the `starter` branch. To do this you can use the `checkout` command in git.
> 

```bash
git checkout -b starter
```

We have deleted both the `ViewController.swift` file, this way you have a blank slate to build from.

---

## Design the Storyboard

To create our storyboard will need to flex our skills with Interface builder, constraints, and adding attributes. View the image of the completed project to get an idea of what the storyboard will look like. Okay, let’s get started!

### Starting from the top down

Let’s begin our interface design by adding a `UILabel` to the canvas.

1. Access the object library via the `+` on the top right side. Drag an `UILabel` object to the canvas.
2. Set the following constraints to the `UILabel`
    - Center `horizontally` in the container.
    - Align the `top` 40 points to the `safe area`
    - Set the `width` to `0.8` of the `superview` width
    - Via the Attributes Inspector see the font to `Large Title`
        - Set the text to be center-aligned
        - This will display the `name` of our `Movie`
3. Access the object library via the `+` on the top right side. Drag another `UILabel` object to the canvas. This will be used to display our movie rating.
    - Control-Drag from this new `UILabel` to the label we created above and align the `trailing` constraint.
    - Set a proportional width to `0.3` of the label we created above.
    - Set the `height` to 30
4. Drag a `UIImageView` object to the canvas. This will be used to display our movie poster. Set the following constraints
    - width: 200
    - Set the vertical space to the `ratingLabel` to `20`
    - Center horizontally in the `superview`
    - 2:3 aspect ratio
5. Drag a `UITextView` object to the canvas. This will be used to display our movie synopsis. Lock in all the other objects and complete our design with the following constraints
    - Align the Trailing, Leading, and Bottom `10` points to the `Safe Area`
    - Set the vertical space to the `posterImageView` to `10`.

Really great work! Build and run the app to ensure it works properly! If you have no bugs commit these changes!

---

## Model

Our app will only have one Model at this time. `Movie`

1. Create a new, blank`.Swift` file with your Models name.
2. On this file declare a new `class` with the same name as your file
    - Remember - This should be Capitalized
3. Create the properties for your `Movie` object.
    1. name
    2. rating: Should be an `optional Double`
    3. synopsis
    4. moviePoster
4. Create your member-wise initializer.
    1. Feel free to review the video [classes](https://player.vimeo.com/video/664057680?h=0c1d398ab2) for information on what a `member-wise initializer` is and how to write one. As always, you’re welcome to use external resources such as Google and Stack Overflow.

### Ain’t it a beaut?

We did it! We have completed the Model! Now is a great time to remember our ABCs

- A - Always
- B - Be
- C - Committing

Commit the changes.

---

### Model Controller

Each Model should have a `Controller` to manage its state.

- Create a new, blank`.Swift` file with the name `MovieController`.
- Declare a new class with the same name as your file.

This file will need to handle a few things for us. First, our `Controller` controls all the `CRUD` functions for our `Movie` Object.

### What is CRUD?

- Create
- Reuse
- Update
- Delete

Once created, updated, or deleted, we need a collection that holds the `Movie` objects. We also need a way to ensure that when we reference our `Movie` collection we are referencing the **same** `instance` of that collection. Now that we know our goals, let’s get building!

## Challenge yourself to create this file without the instructions

1. Let’s start with writing our `Singleton`. Remember - the `Singleton` ensures that whenever we access the `Singleton` we will be accessing the same `instance` of that class.
    - How do I write this?
        
        ```swift
        static let sharedInstance = MovieController()
        ```
        
2. Write a comment under this line that describes your understanding of what a singleton is and why you want one.

Now let's create our `Collection`

1. Declare a new variable with the name `movies`. The type should be an `array` of `Movie`.
    - Set a default value of an empty array
2. Make a mark that states the following code will be your `CRUD` functions

---

### Create

1. Declare a new `func` named `createMovie` with an equal amount of parameters as your model's properties. This does not need to return any information
    1. Be sure to use the same types as you declared in your `Model` file
    2. Properties that were set as optional in the `Model` should be optional here too.
2. Within the body of this function initialize a new `Movie` object.
    - Use the values passed in the `createMovie` function to create this object.
3. Once the `movie` has been created, append that element to your collection

We won't be adding any other CRUD functions at this time.

---

### Great work!

Now is a great time to commit your changes.

---

## Wiring up the Views

Here is where the magic happens! On our `View Controller`, we will write the code to display all our data to our users!

1. One of our first goals is to create the `outlets` we will need. 
    - Create an outlet for the `label` that will display the name
    - Create an outlet for the `label` that will display the rating
    - Create an outlet for the `imageView` that will display the poster
    - Create an outlet for the `textView` that will display the synopsis
    - Be sure to place your `IBOutlet`s above the `viewDidLoad.`
2. Now we need a `Helper Function` that will update the views of our app to display the `Movie` data
    - Declare a function named `updateViews`
    - **Call** this function in the `viewDidLoad`
        
        > When you write an empty function this is called a `Method Signature`.
        > 
3. Within the body of this function, we need to first find what `movie` from our `movies` array we want to display. In the case of this app, it will be the first one.
    - Declare a constant named `movie` and assign the value of the first `element` in our movies array.
        - Remember: To gain access to the `movies` array we first need to access an instance of the `MovieController`. We want to ensure it's the same instance so be sure to use the `Singleton`.
        - Then, we can use subscript syntax to access the element at the first index.
            - How do I write this?
                
                ```swift
                let movie = MovieController.sharedInstance.movies[0]
                ```
                
    - Now that we have our `movie` we can set the properties of our outlets to display the correct data
        - We want to set the `text` property of the label that will display the `rating` to the `rating` from the `movie`. However, currently, that property is `optional` and we don’t know if it has value. To handle this we will be using `nil-coalescing`.
            - Declare a constant named `rating` and assign the value of the `rating` from our movie object. Use `nil-coalescing` to provide a value of `0` if the rating is `nil`.
        - Assign the `text` property of the `label` that will display the `rating` to a string interpolated to display the `rating` constant we just created / 10.
        - Assign the `image` property of the `imageView` to the `image` from the `movie`
        - Assign the `text` property of the `label` that will display the `name` to the `name` from the `movie`
        - Assign `text` property of the `textView` that will display the `synopsis` to the `synopsis` from the `movie`.
        

Okay! Build and run your app! Test the functionality and fix any bugs present.

### Really great work! Be sure to commit the completed project to Github.
