# window.requestAnimationFrame()

https://developer.mozilla.org/en-US/docs/Web/API/window/requestAnimationFrame

The **`window.requestAnimationFrame()`** method tells the browser that you wish to perform an animation and requests that the browser calls a specified function to update an animation before the next repaint. The method takes a callback as an argument to be invoked before the repaint.

Your callback routine must itself call `requestAnimationFrame()` again if you want to animate another frame at the next repaint. `requestAnimationFrame()` is 1 shot.

You should call this method whenever you're ready to update your animation onscreen. This will request that your animation function be called before the browser performs the next repaint. The number of callbacks is usually 60 times per second, but will generally match the display refresh rate in most web browsers as per W3C recommendation. `requestAnimationFrame()` calls are paused in most browsers when running in background tabs or hidden [`<iframe>`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe)s in order to improve performance and battery life.


