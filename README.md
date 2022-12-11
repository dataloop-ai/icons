# [DL Icons](https://dataloop-ai.github.io/icons/)

This is a Dataloop created icon pack.

It contains both SVG files and font files generated using [Icomoon](https://icomoon.io/) tool


## How to use Icons in the code

You can use the icons in two main ways.

1. #### Loading the css fonts and using the css selectors

    In order to load the CSS font files you can simply import the style
    ```js
    import '@dataloop/icons/src/style.css'
    ```

    This will make sure you have loaded the glpyh selectors

    Next its simple way of using it in an ```<i>``` tag
    ```html
    <i class="icon-dl-dot"></i>
    ```

2. #### Using the SVG files
    Just load the svg file into an ```<image>``` tag and point to it.

    ```html
    <img src="node_modules/@dataloop/icons/src/assets/ai.svg" />
    ```