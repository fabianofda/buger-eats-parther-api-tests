*Settings*
Documentation    RabbitMQ Helpers API

*Variables*
${RABBIT_URL}    https://jackal.rmq.cloudamqp.com/api/queues/mluelnpd/email

&{RABBIT_HEADERS}    Content-Type=application/json                                                   
...                  Authorization=Basic bWx1ZWxucGQ6ZndYUUU2cDVRYTh0SjlLczcxc005cFZyTG00YUxPRUc=

*Keywords*
Purge Messages

    ${payload}    Create Dictionary    vhost=mluelnpd    name=email    mode=purge    

    ${response}    DELETE    ${RABBIT_URL}/contents    headers=${RABBIT_HEADERS}    json=${payload}    

    [Return]    ${response} 

Get Message

    ${payload}    Create Dictionary           
    ...           vhost=mluelnpd              
    ...           name=email                  
    ...           truncate=50000              
    ...           ackmode=ack_requeue_true
    ...           encoding=auto
    ...           count=1

    ${response}    POST    ${RABBIT_URL}/get    json=${payload}    headers=${RABBIT_HEADERS} 

    [Return]    ${response.json()}[0] 
