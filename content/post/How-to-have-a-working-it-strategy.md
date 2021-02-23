+++
date = "2017-01-14T18:15:31+04:00"
title = "How to have a working IT strategy?"

+++

I'm working in Dubai since 2 years and half, and I've seen many times the same problem, the same issues in IT departements. As a CTO, I'm trying to be a better manager, but I would like to expose some bad and good points, which will be the beginning of a new serie of articles.

## Bad points

### Book Keepers

As a book keeper, everything is an investment so everything should have a Return On Investement (ROI). for example, I'm a company, working on cutting coconuts, and I want to have a new machine, which will increase my productivity. I have a investment plan on 3 years, so after the third year, I will have some benefits on my machine. Problem, they are having the same vision with IT projects, so you will havge a 3 phases plan:

* Specifications
* Code
* ROI

and because every accountant like 3 years plan, when you will buy/build a software, you will have to keep it for 3 years. It's crazy. 

The main problem is that if you consider softwares as real estate, you will see this reasoning: 

> I know that there is an opensource alternative, which has the same features, and do it better than our software, but we cannot use it, we've paid the previous software, so let's stick to the old one for 2 more years
> But this software is killing our productivity/not feeting our needs anymore
> Yes but if we don't use it anymore, we don't have our ROI, so we've lost some money
> ...

So in a lot of companies, here in Dubai, they are planning over 3 years. 3 years, in the IT world, it's eternity, you cannot do this (btw, to all this top IT managers, which are doing a 5 years strategy with technological choices, Fuck you all). At the end, you busines,, instead of being business oriented, is book keepers oriented, this is pure madness

### Dev vs Ops

Ops are having a big problem, they have an inferiority complex. Why? Because nobody is saying 
> Good job configuring servers this year

So for every company, Ops are a cost center. Worst part about it, AVG 70% of costs is to run some very old things, which are probably not used anymore. Result: on a side you have this famous VCycle with ROI softwares, Prod is a cost center, it's just a bill to pay every month, do you see the synchronisation problem coming? Ops have to reduce the bill, so when a guy from the DEv team is coming, saying that he needs one more server, even if this project will generate a lot of revenue, the cost will be on the Ops team. A lot of problems are coming along:

* Servers delivered in 3 months
* Dev and Ops are fighting
* When Devs are finally receiving a server, they will put everything on it, so you will have some security issues

Because the goals are not the same, you are creating a big issue. If on top, you have some workforce providers, it's creating an apocalypse: some people are happy to have more development time. So some fucking stupid financial rules are reducing the productivity of the company for nothing?


### Company stack/framework

For the stack, stop with it, that's it, use the best technology for your usage.

for the home made framework, forget it too, the target is to reduce the number of line of codes, not to increase it. Each line of code is a cost. And each line introduce new bugs. One more good points of reducing the number of lines of code, it's that it's easier to rewrite it.


## Solutions

### DevOps

Everybody is talking about DevOps, it's the new buzzword, but nobody understand anything about it. How the hell can you create a DevOps departement, with a dedicated budget, it's the opposite of DevOps. Like to let some devs becoming ops, it's a mistake.

First step is simple: accounting fusion of Dev and Ops departement.

### Automate your production

if you automate your production, your devs will have a continuous delivery pipeline, which will create a better flexibility for the business.
