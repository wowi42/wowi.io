+++
title = "Stop hosting yourself"
draft = true
date = "2016-10-18T02:56:11+04:00"

+++

Currently, my job is to review the global infrastructure of ICFlix and as a streaming company, the most important part is the streaming. I'm not allowed to talk about our infrastructure, but I can give you some fake numbers for our scenario

Let's imagine you have 500 TB of _hot_ storage, it will cost:

* Backblaze B2 $30,000/year
* Amazon S3 $168,000/year
* Google cloud $156,000/year
* OVH Cloud Storage $67,200/year

In that case, you have a temptation: **let's manage it ourself!**

Just imagine that you will build your infrastructure on OVH:

* you choose a 6*12TB disks server which will cost you $439.00/month
* this server need to have some redundancy, so let's say that we will use some raid6, so you can store 45TB per server
* to avoid any hardware issue, you need to have a replica of this server in another datacenter, so you had the same server

So the cost for the servers is: ```439*2*12=$10536```. Then you need monitoring, for example Datadog ```24*14=$360```, and logs management ```$329```. As the content delivery is the main activity of ICFlix, we should be sure that we have a 100% availability, so we need some redundant load balancer/reverse proxy ```2*500=$1000```.

So the cost for your infrastructure, without human resources is already ```10536+360+329+1000=$10225``` per month.

> Loïc, you forget the price of the bandwidth

Correct, young padawan, but to be frank, not relevant: your CDN is supposed to cache your ressources, so at least, your _seed_ infrastructure should not deliver more than your complete catalog per month, so max avg bandwidth will be ```500000/30/24/3600=0.19```GB/sec, and that's the worst case. So global cost of your infrastructure will be:

* Backblaze B2 $330,000/year
* Amazon S3 $468,000/year
* Google cloud $636,000/year
* OVH Cloud Storage $133,200/year

Ow, pricing is quiet different now, and good news, if you choose the OVH hosted yourself infrastructure, you have 500Mbps/server = 62.5MBps/server so 62.5*24=1.5GBps.


So hosted solution will cost you $122,700/year.

> Wait a second Loïc, so hosting yourself is cheaper than a service?

Wrong, young padawan: you forget to include your human resources!

To manage this infrastructure, you need at least 3 sysadmins to be on duty, manage your automation, your monitoring, your logs.

In Dubai, the average salary of a sysadmin is 25,000 AED / month = $6800/month

So ```6800*3*12=$244,800``` per year, without the effective cost of this sysadmin (visa, workstation, office, etc...)

**TADA**: cost of your self hosted ```122700+244800=$367500``` not a so good news.

you want a worst scenario: try to host it with some nice Object Storage, like Ceph or Gluster, you need more technical resources, more engineers, and the cost is going up again.

The previous cost seems not so high finally, no?

So how this companies are doing so much cash with this services? **Automation**: their systems are industrialized.

So please, next time that you wan to host smoething yourself, calculate the real **complete** cost!
