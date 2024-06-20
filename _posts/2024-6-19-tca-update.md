---
layout: post
title:  "twisted coiled actuators"
date:   2024-06-20 00:00:12 +0300
categories: tca
---
For progress on the development and technical details, go to my [TCA page](https://fifthrooter.github.io/twisted-coils/).

A twisted coiled actuator (TCA) is an alluring idea. Instead of having a simple string being pulled by an electric motor, why not embed the actuation mechanism within the material itself? Just like animal muscles.  

This was a project I worked on as a student assistant in university, trying to manufacture nylon based twisted coil actuators, powered by resistance heated wires, with the goal of designing a breathing trainer vest that could contract and expand to assist children with breathing problems. I was also working on my vertical farming company at the time, so I also some incredible soft robotics applications for this actuator, if pulled off.

Initial testing was promising, but ultimately the idea was scrapped in favor of regular small servo motors due to several factors:
1. Heat dissipation - in order to get strong enough actuation force, several individual coils needed to be combined together, which made it very difficult to cool them down fast enough to allow for rapid contraction/relaxation cycles that could match the rate of breathing of a child;
2. Safety - embedding resistance heating-based TCAs posed a safety risk that could not be easily done away with by using feedback sensors. Occasionally, overheating of the coils resulted in the nylon melting and breaking. And in case of some feedback loop failure, the resistance wire could heat up too much and cause discomfort at best, and set the vest material on fire at worst.
3. Feedback Control System - direct measurement of the resistance wire's temperature was practically impossible due to it being tightly woven into the nylon fishing line, and hence it was difficult to accurately determine when to stop the heating, which resulted in the TCAs melting after having reached the optimal actuation temperature. Using wire's resistance measurement as a function of its temperature was explored, but due to the several other drawbacks, was never implemented.
4. Lack of time - this was a side project for me, and the amount of effort, research, design and experimentation would've easily consumed a full time work schedule in order to actually realize it. Unfortunately, I underestimated the complexity of it and realized it quite late in the project. You live and you learn.

### TCAs: Revisited
After 5 years of completely forgetting the idea, I started thinking about it again. At the time I thought that we were probably really close to cracking mass-producable solid state electroactive polymer artificial muscles, which would've rendered the much lower tech TCAs irrelevant. However, we're still not quite there, nor are we anywhere near them being scalable and affordable. 

At first I didn't set out to revisit the nylon TCA concept, but it happened as a result of me purchasing a sewing machine and starting to think about woven materials. I was curious whether it would be possible to affect how a rubber tube bends once pressurized with gas if woven into a carefully woven fabric where some spots are tighter than others, causing the tube to bend at certain points, potentially creating a useful conceptual framework for developing articulating joints/fingers for use in soft robotics. Because the weave would be made from simple thread in one specific pattern, only a single possible motion/bend would be possible.

The next logical step was to decide how to transition from this one static bent position into full articulation, where the threads would tighten and loosen in different places on the fabric to cause the tube to change its bend pattern. Then the TCA idea came back into my mind.

So, I thought it might be a good idea to revisit this idea with a fresh new perspective.

There I was, sitting in the bike shop where I work and thinking about how to resolve the issues of waste heat, inconsistent heating of the nylon with the nichrome wire wrapped around it, or similarly silver-coated nylon fiber, and, of course, the safety aspect of having an exposed resistance wire touch external surfaces like skin, plastic, fabric etc. As I was considering different options as to how to deal with these issues, I suddenly thought of a common product we deal with at the shop - bike tires! Bike tires have a metal bead lining embedded into the rubber on each side of the tire to add additional structural support while pressed against the rim under pressure. That inspired me to think about fusing the resistance wire within the core of the nylon fibre. A **coaxial nylon TCA**!

This was quite the rabbit hole as I started investigating how the tires are made and how the beads are fused into the rubber. Turns out they're folded into the rubber and then the tire gets squished and stretched - it wasn't a directly translatable manufacturing process to such a tiny diameter fibre. However, it got the (idea) ball rolling...

