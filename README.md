# [DL Icons](https://dataloop-ai.github.io/icons/) ![icons version](https://img.shields.io/npm/v/@dataloop-ai/icons?label=Latest%20Library%20Version)

This is a Dataloop created icon pack.

It contains both SVG files and font files generated using [Icomoon](https://icomoon.io/) tool

## How to install

Our icons pack can be found in the [public NPM registry](https://www.npmjs.com/package/@dataloop-ai/icons) and can be installed with the following command:
```npm
npm i @dataloop-ai/icons
```

## How to use Icons in the code

You can use the icons in two main ways.

1. #### Loading the css fonts and using the css selectors

    In order to load the CSS font files you can simply import the style
    ```js
    import '@dataloop-ai/icons/docs/style.css'
    ```

    This will make sure you have loaded the glpyh selectors

    Next its simple way of using it in an ```<i>``` tag
    ```html
    <i class="icon-dl-dot"></i>
    ```

2. #### Using the SVG files
    Just load the svg file into an ```<image>``` tag and point to it.

    ```html
    <img src="node_modules/@dataloop-ai/icons/docs/assets/ai.svg" />
    ```