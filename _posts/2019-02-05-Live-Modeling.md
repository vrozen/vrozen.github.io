---
layout: post
title:  "Exploring the Design Space with Live Modeling"
date:   2019-02-05 14:00:00 +0100
author: Riemer van Rozen
affiliation: Amsterdam University of Applied Sciences
city: Amsterdam
country: The Netherlands
categories: blog post
---

*Draft -- February 5th 2019*

**Abstract.**
Live Modeling is a research area in Model-Driven Engineering that studies how to improve the affordances of languages, tools and techniques by providing immediate and continuous feedback about how visual changes to the source code (or model) affect running programs.
Instead of long edit-compile-run cycles, every update to the model is immediately visible in the running application and its programming environment.
Here we share our perspective on how these tools support interactive design space exploration.
We motivate our research and clarify our position by giving an account of our progress on enabling technology constructed in the context of an applied project called Live Game Design.
We demonstrate two live programming environments we created for 1) a simple State Machine Language; and 2) Micro-Machinations, a Domain-Specific Language for game economies.

### Introduction
Imagination is at the root of every improvement. We see how something is lacking, we imagine an improvement, set out to achieve a new goal and find new solutions with varying degrees of success. Making improvements often goes wrong because our imagination did not accurately predict the outcomes of our actions.

Practitioners and researchers have invented *iterative design processes* to gather early feedback on the qualities of our work and improve solutions step by step, gradually improving our insight, constantly checking if we are still on track with respect to changing goals. On the one hand we rely on our imagination to take the right course of action, and on the other hand we do not know yet what that should be because we still have to learn what the solution can become.

Experienced software engineers construct *mental models* of the systems they build. They can predict with uncanny accuracy how a program works, how it is failing and how it can be improved. Programming is mostly done by imagining improvements and then implementing them, finding out how you were wrong during a lengthy debugging sessions and fixing bugs, repairing mistakes, and of course improving your predictions in the mean time.

To achieve the highest possible quality, *understanding* how programming changes affect systems under development with respect to a goal is paramount. However, the changes themselves are not often explicitly represented. Instead, engineers create a new version of the source code of a program by making changes here and there, but commonly only see the effects when they recompile or reinterpret and run that code again. This is especially complicated for novice programmers who lack the mental model needed to make correct and meaningful changes to the source code. Instead, novices are left to guess and are forced to take a stab in the dark. This makes learning how to program a frustrating and difficult thing to do. How can you build your mental model if everything you try blows up in your face?

Imagine that we do explicitly represent change, that all changes we make to program models have meaning, and that we can study the effect of changes immediately and continuously. This enables checking with every little change if it had the effect what we imagined or learning how it did not, and combining lots of little changes for steering towards improvements of complete systems. This style of incremental updates with immediate feedback is called *live programming*.

In live programming we do not assume that you already know what you are doing. 
Program, go forward, discover your imagination was wrong, learn and reimagine. Go back and try again, observe an improvement, enjoy the endorfines rushing through your brain and continue. Fail, that is ok, it's never a straight line to a goal, just keep modeling, you will get there in the end.
We believe that *'exploring the failure space'* should not be tedious or repetitive, but instead quickly help identify dead ends and gradually find new exciting design alternatives.

Our research focusses on explicitly representing changes of program models that help programmers in general and game designers in particular understand what their changes mean, enabling them to gradually improve both their insight and their programs [1].

### Live Programming of State Machines
A key research challenge in live modeling is to determine how to migrate the application's run-time state with the changes to its source code.
In van Rozen and van der Storm [1], we describe first steps towards general, reusable and maintainable solutions, which entails *differencing* models and *patching* the run-time state to reflect the changes. 
The following movie demonstrates how this works for a simple State Machine Language.

<figure class="video_container">
  <video controls="true" allowfullscreen="true"  width="100%">
    <source src="/assets/sml-live.mp4">
  </video>
</figure>

### Live Game Design with Machinations
The project Live Intelligent Visual Environments for Game Design, or LIVE Game Design for short, envisions *live game design tools* that have the following qualities:
	
* **Visual.** includes visual programming languages especially attuned to the expertise of game designers

* **Live.** provides immediate and continuous (live) results that are understandable and help gain insight

* **Feedback.** shows precise and intelligent feedback on mechanics, related dynamics (interaction and run-time), resulting aesthetics (gameplay), in order to make informed decisions.

* **Feed-forward** offers alternatives that can be inspected, picked and applied to focus the creative design process

* **Applicable.** examples and material to learn how to apply the tools

Here we demonstrate a new live programming environment for Micro-Machinations [2,3,4], a Domain-Specific Language for game economies that adds the programming language dimension to the design notation of Machinations [5].
The tool supports simultaneously editing and running models, which enables immediate prototyping and continuous play testing.
Ferdy van den Hoed (a bachelor student at the AUAS) built the front-end in Unity in the context of an internship at Firebrush Studios, with Paul Brinkkemper.
Riemer van Rozen built the back-end, a new C#-based library which is also embeddable in games that is based on prior research [1].
As a result, games developed in Unity might profit from a built-in editor, though the final goal is platform independent remote manipulation.

**Simple Model.**
We show a simple diagram that uses only global variables, like the Machinations tool by Joris Dormans.
On the left we see the *edit view* and on the left the *run-time view*. As soon as an interactive node is added, it can be activated to see how the resources flow.

<figure class="video_container">
  <video controls="true" allowfullscreen="true" width="100%">
    <source src="/assets/mm_simple.mp4">
  </video>
</figure>

**Object Oriented Model.**
More complex models consist of more than just global variables. Instead, the name space consists of objects, which are instances of definitions.
A first attempt at modeling a diagram inspired by a Farmville also works surprisingly well.
The idea unfolds as follows: players have a farm, a farm has plots, plots have plants, and so on.
We now see the definitions in the *edit view* on the left and run-time instances on the right, which are updated every time we edit.

<figure class="video_container">
  <video controls="true" allowfullscreen="true" width="100%">
    <source src="/assets/mm_objects.mp4">
  </video>
</figure>

Note the similarity with Object Oriented Programming where classes have zero or more instances.
The essential difference however is that in live modeling the program always runs. 
Instead of something to be imagined, the run-time model on the right is a fact and a consequence that can be observed and inspected.

As far as we know our live game design tool is the first of its kind.
Of course, this is merely a proof of concept, and it needs additional development before industry can adopt it.
The business initiative [machinations.io](https://machinations.io) is an industrial strength design tool (but not a programming language) with the same notation.

### Conclusions and Future Work
We described progress on enabling technology for languages and tools for live programming and game design, and shared our perspective on how they support an interactive exploration of the design space.
We motivated our research and gave and account on our progress by demonstrating live programming environments for State Machines and Micro-Machinations.

**Future Work.**
The model transformation and state migration engine that drives these tools is not yet published. 
This engine deals with events in a novel manner and requires a new way of thinking about how to build languages for live modeling.
This will be a subject of a future research paper.

**Thanks.** We thank Paul Brinkkemper for his continued collaboration with us in applied research on Automated Game Design.

### Bibliography

1. R. van Rozen and T. van der Storm. Toward Live Domain-Specific Languages: From Text Differencing to Adapting Models at Run Time. Pre-print of an article that appeared in Software & Systems Modeling, Springer, August 2017. [[pdf]](https://homepages.cwi.nl/~storm/publications/vRozenvdStorm2017_sosym_v3.pdf)

2. P. Klint and R. van Rozen. Micro-Machinations: A DSL for Game Economies. In M. Erwig, R. Paige, and E. Van Wyk, editors, Software Language Engineering, volume 8225 of Lecture Notes in Computer Science, pages 36–55. Springer International Publishing, 2013. [[pdf]](http://oai.cwi.nl/oai/asset/21923/21923B.pdf)

3. R. van Rozen and J. Dormans. Adapting Game Mechanics With Micro-Machinations. In Proceedings of the 9th International Conference on the Foundations of Digital Games (FDG). Society for the Advancement of the Science of Digital Games, April 2014. [[pdf]](http://oai.cwi.nl/oai/asset/23138/23138A.pdf)

4. R. van Rozen. A Pattern-Based Game Mechanics Design Assistant. In Proceedings of the 10th International Conference on the Proceedings of Foundations of Digital Games (FDG). Society for the Advancement of the Science of Digital Games, June 2015. [[pdf]](http://oai.cwi.nl/oai/asset/23769/23769A.pdf)

5. J. Dormans. Engineering Emergence - Applied Theory for Game Design, PhD Dissertation, 2012. [[pdf]](http://www.jorisdormans.nl/pdf/dormans_engineering_emergence.pdf)

