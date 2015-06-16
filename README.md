# vue-keep-scroll

If a DOM fragment is removed from the DOM and then re-attached any scoll positions are lost. This is typically the situation when dynamic Vue components are used to switch pages.

 This is true in the Chrome Browser.  It may or may not happen in other browsers but for the application to work in all browsers this is needed.

## Usage

### CommonJS

- Available through npm as `vue-keep-scroll`.

  ``` js
  var vueKeepScroll = require('vue-keep-scroll')
  Vue.use(vueKeepScroll)
  ```

### Direct include

- You can also directly include it with a `<script>` tag when you have Vue itself included globally. It will automatically install itself, and will add a global `vueKeepScroll`.

### Use in templates

Then you can do this.

``` html
<div style="overflow:auto" v-keep-scroll">Tall list that scrolls.</a>
```

When this is in a DOM fragment that is detached from the DOM and reattached, the scroll position will be kept.

## Building

When installed with npm the script `compile.bat` will run and compile the coffeescript in the `src` folder to javascript in the `lib` folder.  Don't worry about the Windows name, this will work on any platform.

## License

MIT
