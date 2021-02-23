+++
title = "Manage your logs"
draft = false
date = "2016-10-19T03:11:59+04:00"

+++

Logs, logs, logs, the nightmare of every company. Even in the same company, nobody have the same format. Stdout, file, syslog, rabbitmq, MySQL are some usual destinations of the logs, but which one is the best?

Short answer: stdout or syslog

A file is always a bad idea: you need to manage the disk storage and you are stateful.
RabbitMQ can be a good idea, but no, you don't want to limitate your application with managing a connection ro RabbitMQ, and it's the same for MySQL

To be honest, I've taken an habit with all my previous team: send everything to stdout. Why?

* it's easier to debug for developers
* you can send it everywhere, including syslog

> But Loïc, you are only talking about the logs of a WebApp, no? What do we do with the error messages, like this nice trace in Python?

Correct, young padawan, I'm managing right now only the logs of the app, not the error logs of the app, and you should do it like this too, because it's 2 different process.

Regarding the format, we are using this format

```
{
    "timestamp": "time_iso8601",
    "status_code": "",
    "short_message": "",
    "host": "",
    "facility": "",
    "errno": "",
    "X-Forwarded-For":"",
    "X-Forwarded-Proto":"",
    "uri": "/no-such-file",
    "level": ,
    "headers": {
        "user-agent": "BadAgent/1.0",
        "connection": "close",
        "accept": "",
        "key1": "value1",
        "key2": "value2"
    },
    "body_bytes_sent": "",
    "request_time": "",
    "body": "",
    "response": "",
    "method": "",
    "request_id": "uuid v4 unique id of the request",
    "app_id": "",
    "instance_id": "",
    "instance_type": "",
    "commit_id": "",
    "instance_number": ""
}
```

It's working well, and we are very happy about it, but be careful: *logs are not here for monitoring nor real-time alerting, it's used for post-mortem.*
