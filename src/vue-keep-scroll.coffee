
vueKeepScroll = 
  install: (Vue) ->
    Vue.directive 'keep-scroll',
      bind: ->
        @el.addEventListener 'scroll', (e) ->
          ele = e.target
          ele.setAttribute 'data-vuescrlpos', "#{ele.scrollLeft}-#{ele.scrollTop}"
        oldAttached = @vm.attached
        @vm.attached = (args...) ->
          for ele in @$el.querySelectorAll '[data-vuescrlpos]'
            [ele.scrollLeft, ele.scrollTop] = ele.getAttribute('data-vuescrlpos').split '-'
          oldAttached?.call @, args...

if typeof exports is "object"
  module.exports = vueKeepScroll
else if typeof define is "function" and define.amd
  define [], ->
    vueKeepScroll
else if window.Vue
  window.vueKeepScroll = vueKeepScroll
  Vue.use vueKeepScroll
