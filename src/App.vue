<template>
    <dl-theme-provider :is-dark="false">
        <div class="container">
            <div class="logo-container">
                <a
                    class="logo"
                    @click="logoClick"
                    href="https://dataloop.ai/"
                />
            </div>
            <header>
                <div>
                    <h1>Neurons Icon Pack</h1>
                    <h4>Powered by Dataloop</h4>
                </div>
            </header>
            <section>
                <IconsGrid />
            </section>
        </div>
    </dl-theme-provider>
</template>

<script setup lang="ts">
import { DlThemeProvider } from '@dataloop-ai/components'
import IconsGrid from './components/IconsGrid.vue'

const logoClick = () => {}
</script>

<style lang="scss" scoped>
header {
    display: grid;
    place-items: center;
    height: 25vh;

    text-align: center;

    h1 {
        font-size: var(--dl-font-size-h1);
        color: var(--dl-color-darker);
    }
    h4 {
        font-size: var(--dl-font-size-small);
        color: var(--dl-color-lighter);
    }
}

.logo-container {
    padding: 10px;

    .logo {
        display: block;
        background: url(https://dataloop.ai/wp-content/uploads/2020/03/logo.svg)
            no-repeat;
        height: 32px;
        cursor: pointer;
    }
}
</style>

<style lang="scss">
* {
    margin: 0 auto;
}

body {
    display: block;
    background: linear-gradient(to top, transparent 93%, var(--dl-color-info));
    height: 100vh;
}
</style>
