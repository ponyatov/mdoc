# [[Web/server]] using [[cowboy]] without [[plug]]

https://minhajuddin.com/2020/06/05/how-to-create-a-web-server-using-cowboy-without-plug/

[[cowboy]] is an amazing [[Web/server]] that is used by [[plug]]/[[Phoenix]] out of the box, I don’t think Phoenix supports any other web servers at the moment. However, the [[plug#adapter]] is fairly abstracted, and plug implements this adapter for cowboy through the [[plug_cowboy]] hex package. In theory, you should be able to write a new adapter if you just implement the Plug adapter behaviour. The plug cowboy adapter has a lot of interesting code and you’ll learn a lot from reading it. Anyway, this blog post isn’t about Plug or Phoenix. I wanted to show off how you can create a simple [[cowboy]] server without using [[plug]] or [[Phoenix]] (I had to learn how to do this while creating my side project webpipe)
