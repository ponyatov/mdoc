# HTTP/GET

- [[GET]] requests have no body.

## sample
```
GET / HTTP/1.1
Host: 127.0.0.1:12345
Connection: keep-alive
Cache-Control: max-age=0
sec-ch-ua: " Not A;Brand";v="99", "Chromium";v="100", "Google Chrome";v="100"
sec-ch-ua-mobile: ?0
sec-ch-ua-platform: "Linux"
Upgrade-Insecure-Requests: 1
User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9
Sec-Fetch-Site: none
Sec-Fetch-Mode: navigate
Sec-Fetch-User: ?1
Sec-Fetch-Dest: document
Accept-Encoding: gzip, deflate, br
Accept-Language: ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7,pl;q=0.6,da;q=0.5,hmn;q=0.4,mt;q=0.3,bg;q=0.2,zh-CN;q=0.1,zh;q=0.1
```

## Fields

- GET / [[HTTP#1.1]]
- [[#Host]]: 127.0.0.1:12345
- [[#Connection]]: keep-alive
- [[#Cache-Control]]: max-age=0
- sec-ch-ua: " Not A;Brand";v="99", "Chromium";v="100", "Google Chrome";v="100"
- sec-ch-ua-mobile: ?0
- sec-ch-ua-platform: "Linux"
- Upgrade-Insecure-Requests: 1
- [[#User-Agent]]: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36
- [[#Accept]]: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9
- Sec-Fetch-Site: none
- Sec-Fetch-Mode: navigate
- Sec-Fetch-User: ?1
- Sec-Fetch-Dest: document
- [[#Accept-Encoding]]: gzip, deflate, br
- [[#Accept-Language]]: ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7,pl;q=0.6,da;q=0.5,hmn;q=0.4,mt;q=0.3,bg;q=0.2,zh-CN;q=0.1,zh;q=0.1

# Host
# Connection
# Cache-Control
# User-Agent
# Accept
# Accept-Encoding
# Accept-Language
