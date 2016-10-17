+++
draft = false
date = "2016-10-16T03:57:25+04:00"
title = "Infrastructure time bomb"

+++

__You are facing performance issues? It's time to fix your problem__

Just imagine this situation:

* you are developing a web application
* you had to release fast, so your code isn't perfect and scalable
* you start to grow
* and you start to see some performance issues

It's time to act!!! Why? Because performance are not a linear issue.

Just imagine that you have a request which is taking 1 time unit, it's perfect, every time unit, you server a request, but if you start to slow down, what will be the status?

> 1 TU + 1 TU + 1TU = 3 requests for 3 TU

but if your request take 1.5 TU

> 1.5 TU + 1.5 TU + 1.5 TU = 3 requests for 4.5 TU

So just imagine it can become bad.

So when you start to see this, it's time to act and to plan.

First of all, do a quick fix: increase the CPU, RAM, move to SSD. That's what we call upscale. But what will happen when you will reach this limits again? You will be growing and growing until you explode, so you are simply dead.

So like I said before, it's time to plan. You will have to rewrite some code, probably change some technologies, and you need to calculate when you will reach this explosion date, to be able to fix everything before this date.

It's time to scale out:

* Many independant workers doing the same tasks
* No single point of failure
* Follow the good practices (12factor)

> it's not because you are scaling out, that you need to have a lot of tiny workers, you can still use big workers, just multiple of them

If your team is not able to manage the code + the infrastructure, **use some external services**! To be able to maintain a cluster of MySQL/PostGreSQL/Hadoop, it's painful, and your ops team will be probably more useful with helping the dev to deliver better softwares.

You can see my presentation on how to increase your deployment quality and how to build reliable  applications [Bunkr](http://bunkrapp.com/present/ojv16q/?utm_medium=share)

