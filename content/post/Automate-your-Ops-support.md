+++
draft = false
date = "2016-10-17T03:17:27+04:00"
title = "Automate your Ops support"

+++

I don't really understand something: from startups to big companies, I've seen in a lot of companies which are having a stupid Ops Support Center.

Your monitoring system is detecting an alert, which is broadcasted via email/slack/whatever, then an agent will manage this ticket, take the error code, open a documentation, which is generally not up to date and with some weird characters, copy the command to do if this error is raised, open an ssh console, and execute this command. Do you really think that's a job for a human? I mean seriously, who the hell in IT had this kind of idea? You are building resilient systems, scalable apps, and you are still in the stone age for your monitoring?

Do you really think that you cannot automate this task? Is that more complicated than

```
if error == 101:
    //do something
else if error == 102:
    //do something different
```

So how is that possible to see this kind of system? You have a bunch of experts but they are doing the robot's tasks? That's a complete waste of money!
