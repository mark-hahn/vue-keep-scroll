# vue-keep-scroll

###A  Vue.JS plugin directive to remember element scroll-position when detached

## Problem

If a DOM fragment is removed from the DOM and then re-attached any scroll positions are lost. This is typically the situation when dynamic Vue components are used to switch pages.

 This is true in the Chrome Browser.  It may or may not happen in other browsers but for the application to work in all browsers this is needed.

## Solution

vue-keep-scroll is a directive that continually stores the scroll position of the element to which it is applied.  On every scroll event it stores the left/top scroll position in a `data-vuescrlpos` attribute.  Then whenever the element is attached to the DOM the scroll position is set based on that data attribute.

## Usage

### CommonJS

- Available through npm as `vue-keep-scroll`.

  ``` js
  var vueKeepScroll = require('vue-keep-scroll')
  Vue.use(vueKeepScroll)
  ```

### Direct include

- You can also directly include it with a `<script>` tag when you have Vue itself included globally. It will automatically install itself, and will add a global `vueKeepScroll`.

### Use directive

Then you can do this.

``` html
<div style="overflow:auto" v-keep-scroll>Tall list that scrolls.</div>
```

When this is in a DOM fragment that is detached from the DOM and reattached, the scroll position will be kept.

## Hacking

If you wish to modify the source you will need to compile the coffeescript to javascript.  To do this run the `compile` script. It will work on all platforms as it's just a coffee command.

## License

MIT
