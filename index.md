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

> **Before we begin, if you have not, please `Fork` and `Clone` the `Cinema` repository. [Stateful Cinema](https://github.com/Stateful-Academy/Cinema).**
>   To fork click on the `Fork` button in the topright portion of the repo's webpage. This will navigate you to a new webpage titled `Create a new Fork` once here         click the `Create Fork` button which will create a fork of the repo on your Github account, awesome! 
>   
>   After clicking that button you should be navigated to the forked repo on your github account. 
>   On the top left of the webpage you should see `yourGithubUsername/Cinema` once here look to the top right of this webpage and click on the `Code` button this will     open a small menue with a link, copy that link.
>   
>   Phew that was a lot! Dont worry we are almost done and we can get coding!
>   
>   Now open `Terminal` and navigate into your Developer directory, then into Week 2, Day 1. Then paste that Link that we copied from github. This will clone the repo     and create a local repo on our machine! How cool is that?! 
>   Next we will need to Navigate on layer deeper into the project directory(the same way we did above)
>   Once you have forked and cloned this repo please change to the `starter` branch. To do this you can use the `checkout` command in git.
>   
```bash
git checkout -b starter
```

Once here go ahead and open up the project and we can finally get coding! 

We have deleted both the `ViewController.swift` file, this way you have a blank slate to build from.

---
@@ -175,6 +180,14 @@ Here is where the magic happens! On our `View Controller`, we will write the cod
        - Assign the `text` property of the `label` that will display the `name` to the `name` from the `movie`
        - Assign `text` property of the `textView` that will display the `synopsis` to the `synopsis` from the `movie`.

Take a breath here we have done a lot, you're crushing it! Now we have one small step before we are ready to run our app.

Navigate to our AppDelegate this is probably located in your Resources folder. Their should be a a function here called `didFinishLaunching` we are going initilize an object here that we can access throughout our app! We want to do this here becuase our mock object will be initilized on launch of the app. 

Mock data is just some data we are creating ourselves that we can pass around and populate our app with to ensure that it is working as we intended(This will come in handy in a couple weeks when we get into networking!)

Alright go ahead and initilize a movie object in the func `didFinishLaunching` before we look at how do this I want you to read through the code below and really try to think about what this line of code is doing. How are we creating this object? where is it being stored? where are we using this data?

`MovieController.sharedInstance.createMovie(name: "The Mummy", rating: nil, synopsis: "At an archaeological dig in the ancient city of Hamunaptra, an American serving in the French Foreign Legion accidentally awakens a mummy who begins to wreak havoc as he searches for the reincarnation of his long-lost love.", poster: UIImage(imageLiteralResourceName: "theMummy") )`

Okay! Build and run your app! Test the functionality and fix any bugs present.
