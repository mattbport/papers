---
title: Choosers
subtitle: The design and evaluation of a visual algorithmic music composition language for non-programmers
author:
- Matt Bellingham
- Simon Holland
- Paul Mulholland
date: PPIG 2018
---


# Algorithmic music composition

* The partial or total automation of music composition by formal, computational means [@Fernandez2013-zp];
* Non-deterministic – multiple outcomes can result from the same algorithm;
* Structural elements such as indeterminism, parallelism, choice, multi-choice, recursion, weighting, and looping [@Jacob1996-zf].
* Many musicians are not programmers and find existing tools difficult to use [@Bullock2011-sw].


----

# Problem setting --- from PPIG 2014

* Most existing software requires the user to have a considerable understanding of constructs in either graphical (e.g. Max, Pure Data) or text-oriented (e.g. SuperCollider, ChucK, Csound) programming languages;
* Users are often required to have an understanding of musical notation and/or music production equipment;
* Several programs imposed working practices unconducive to compositional processes;
* In some cases the user was unable to define, and subsequently change, the musical structure;
* Complex visual design in graphical programming languages led to patches with multiple connections, making them difficult to read and to navigate.

---

# Design principles

New programming abstraction (the Chooser) to enable algorithmic music composition by non-programmers.

* Parsimony --- a small number of consistent powerful ideas do the work combinatorially;
* Musically meaningful structuring actions are simple and quick to do;
* Both bottom-up and top-down construction are allowed in any combination;
* Affordances are designed for a wide range of users --- children to experts --- via progressive disclosure.

---

# Brief overview of Choosers

![Samples are dragged in and shown as boxes.](images/sampleboxes.pdf)

---

# Brief overview of Choosers

![Sequences are an arrow between boxes or Choosers, with the order indicated by the direction of the arrow. Only a single arrow can enter or exit each element.](images/simplesequence.pdf)

---

# Brief overview of Choosers

![Boxes referring to samples or sequences can be snapped together vertically to create what are known as **Choosers** --- this is the key abstraction.](images/nonannotatedchooser.pdf)

---

# Brief overview of Choosers

![A Chooser which contains only soundable content is called a **Soundable Chooser**.](images/annotatedchooser.pdf)

---

# Brief overview of Choosers

![**Time Choosers** can be used to control the duration of a Soundable Chooser.](images/annotatedtimechooser.pdf)

---

# Brief overview of Choosers

![If a Time Chooser is attached to the bottom of a Soundable Chooser this produces a **Full Chooser**.](images/fullchooser1.pdf)

---

# Hard and soft stops

![The effects of hard and soft stops.](images/hardsoftstop.pdf)

---

![Terry Riley's *In C*](images/Music_preview_InC.jpg)

---

# Example 1 --- using phrases from *In C*

![Two samples will be selected. `0.wav` is set to always be selected --- therefore, one other sample will be selected and both will play concurrently.](images/inc2-nonotes.pdf)

---

# Example 1 --- using phrases from *In C*

![Two samples will be selected. `0.wav` is set to always be selected --- therefore, one other sample will be selected and both will play concurrently.](images/inc2.pdf)

---

# Example 2 --- *Nine Inch Nails*

![An example using samples by *Nine Inch Nails*. Note the multiple time lanes in the `Verse 1` Chooser, allowing for non-deterministic duration.](images/nineinchnails.pdf){width=80%}

---

# User tests

* Purpose
	* Test the ability of self-taught music producers to use Choosers to carry out a range of rudimentary algorithmic composition tasks;
	* Identify usability and user experience problems;
	* Identify tensions and trade-offs.

* Method
	* Seven pairs of users --- participants were neither programmers nor traditional musicians;
	* Wizard of Oz prototyping methodology;
	* Users were active participants using the programming walkthrough method [@Bell1991-uw; @Bell1992-cn], including categorisation of issues into:
		* Questions;
		* Suggestions;
		* Observations.

---

# User tests

![Users were given a range of practical tasks (reproduced in the paper) to complete on paper or on a whiteboard, with outputs played by the facilitator using a set of SuperCollider classes [@McCartney2002-uz].](images/userwork.pdf)

---

# Results --- musical issues

* All participants understood and successfully completed all tasks with varying levels of assistance;
* Stops and rests were initially confusing to some;
* Progress bar request --- reasonable, but difficult in a nondeterministic system;
* Discussions on the desirability of algorithmic music --- Choosers *can* be used in linear music making but they are particularly suited to nonlinear music.

---

# Results --- programming-related issues

* Nose cone shapes were effective in communicating their combinatorial usage;
* Reuse or re-contextualisation of logic was observed in use, but was sometimes not possible where it didn’t make sense --- the rationale behind these requests is instructive as it shows how users understand the tools in the system;
* Users required access to metadata.

---

# Results --- shared and existing knowledge

* One design motivation is to enable people to understand the system very quickly;
* Some users wanted to be able to leverage their existing understanding of DAW software and found new paradigms frustrating --- an example of technological framing [@Orlikowski1994-mi];
* Technological framing, and the expectations set by the use of commercial DAWs, may be an influence on user requests for a progress bar and the conversations on the desirability of nonlinear vs. linear playback that took place during the user tests.

----

# Results --- metaphor

* Interface metaphors are useful when users are familiar with the original interface;
* Now most people are introduced to music production via software, and many do not use hardware, there is an opportunity to revisit some design assumptions;
* Hard and soft stops --- no clear existing metaphor for a soft stop --- both for the function and the icon.

---

# Results --- arithmetic

* The use of numbers in the UI was due to their universal familiarity and their ability to concisely represent many relationships. The decision to use numbers for several parameters was motivated by parsimony and consistency. However ...
* The use of numbers for multiple parameters was perceived as negative by three participants ('too many numbers man!').

----

# Ongoing work --- updated design for second user test

![Each lane has a set number of repeats; $\infty$ can be used for repeats, weight, and nose cone; icons for repeats and weight; updated hard/soft stop icons; and playback/mute available for soundable content in the Time Chooser.](images/secondround.pdf){width=70%}

---

# References {.allowframebreaks}
