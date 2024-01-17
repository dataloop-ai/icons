<template>
    <dl-theme-provider :is-dark="false">
        <div class="container">
            <div class="top-container">
                <div class="logo-container">
                    <a
                        class="logo"
                        href="https://dataloop.ai/"
                        @click="logoClick"
                    />
                </div>

                <div class="ops">
                    <div
                        class="git-tag"
                        @click="
                            openPage('https://github.com/dataloop-ai/icons')
                        "
                    />
                    <dl-button
                        class="github-button"
                        icon="icon-dl-github"
                        size="32px"
                        flat
                        icon-color="dl-color-darker"
                        tooltip="Go to Github"
                        @click="
                            openPage('https://github.com/dataloop-ai/icons')
                        "
                    />
                </div>
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
import { DlButton } from '@dataloop-ai/components'

const logoClick = () => {}
const openPage = (link: string) => {
    window.open(link, '_blank')
}
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
    width: 80%;

    .logo {
        display: block;
        background: url(https://dataloop.ai/wp-content/uploads/2020/03/logo.svg)
            no-repeat;
        height: 32px;
        cursor: pointer;
    }
}

.top-container {
    padding: 15px 10px 10px 10px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 100%;

    .ops {
        display: flex;
        gap: 10px;
        align-items: center;
        font-size: 0.8rem;

        .git-tag {
            width: 180px;
            height: 20px;
            content: '';
            cursor: pointer;
            background-image: url(https://img.shields.io/npm/v/@dataloop-ai/icons?label=Latest%20Library%20Version);
        }

        .git-tag:hover {
            border: 1px solid hex-to-rgba(var(--dl-color-darker), 0.5);
            color: hex-to-rgba(var(--dl-color-darker), 0.5);
        }
    }
}

.container {
    min-height: 68vh !important;
}
</style>

<style lang="scss">
* {
    margin: 0 auto;
}

body {
    display: block !important;
    background: linear-gradient(
        to top,
        transparent 93%,
        var(--dl-color-info)
    ) !important;
    height: max-content !important;
}
</style>
