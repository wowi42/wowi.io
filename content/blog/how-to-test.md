+++
date = "2016-10-01T02:55:11+04:00"
title = "Testing Workflow for Front End"
draft = false
tags = [ "tesing", "DevOps", "Manager" ]
+++

# What are you testing?

Because you're front-end testers, your job is to know exactly what you are testing. You might not always find bugs per se; rather, you might find that something isn’t working as expected or that the developer has misunderstood the functionality requirements. Having a detailed specification up front that all stakeholders have agreed too will help to avoid some of these problems entirely.

# What are you testing for?

First of all, you will need to understand your audience and how they will be consuming the website. Here are a few quick questions you should always ask:

* What are the most popular devices your audience uses?
* What operating system and browser combinations are most popular among your audience?
* What connection speeds do they have (3G, 4G, broadband/fibre)?
* How tech-savvy are they? We can make a judgment call here based on the topic of the website, their devices and their demographics.

Please find and fill this informations before any tests

Armed with this information, you can instantly break down our huge to-do list into segments that are relevant to our audience and that prioritize our testing methodology. For functionality, you know which devices and browser to test in; for performance, you know what connections to test on; and for usability, you know that our audience uses social media applications, so you can include interface elements that they would be familiar with.

# Browser and device support levels

To set the scope of browser and device support easily with clients and to avoid those “bad conversations,” we’ve found that being up front about our “levels of support” really helps. Below are some simple definitions that you can apply to each page type you test.

#### Support level 1: fully supported browsers and devices

* All content must be readable.
* All functionality must work.
* Deviation from approved graphic design must be minimized.

#### Support level 2: partially supported browsers and devices

* All content must be readable.
* Navigation must work.
* Business login functionality must degrade gracefully.
* Any degradation to presentation must not obscure content.

#### Support level 3: unsupported browsers and devices

* No support or testing is required.

# Performance support levels

You might also want to agree with your client on a performance target. The quick and dirty method here is to agree on a score to reach in Google’s PageSpeed Insights or Pingdom’s Website Speed Test. Normally, we aim for at least 85 out of 100.

# Tools for managing your test plan

We did the choice to use GitHub. With Github, you are able to do the following:

* add bugs, issues and tasks in an ordered and segmented list, with the ability to tag (priority, system critical, etc.)
* assign bugs, issues and tasks to members of your team (or to yourself), with due dates
* comment on bugs, issues and tasks
* upload screenshots, videos and documents related to bugs, issues and tasks
* mark a bug, issue or task as resolved or completed
* report on completed versus remaining bugs, issues and tasks.

# Let's go

To be able to test a feature, which is an issue on GitHub, you should have at your disposal:

* Original approved design: Having a visual representation of what you are working towards is important to ensuring that graceful degradation is within acceptable limits and that the presentation doesn’t change much between browsers
* Details of page functionnality: functionnality that needs to be tested should be highlighted, and to have an highlighting them with block overlays. This helps everyone involved to know exactly what to look for and puts us all on the same page.


## How to write a report?


Fill in as much of the template below as you can.  If you leave out information, we can't help you as well.

If we can't reproduce, we might close your issue.  If we're wrong, PLEASE feel free to reopen it and
explain why.


**Environment**:
**Browser information**:
**OS**:
**Installed tools/extensions**:
**Others**:


**What happened**:


**What you expected to happen**:


**How to reproduce it** (as minimally and precisely as possible):


**Anything else do we need to know**:

