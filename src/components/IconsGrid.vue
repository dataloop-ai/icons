<template>
    <div class="container">
        <div class="icons-container">
            <icon-card
                v-for="(icon, index) of icons"
                :key="`${index - icon}`"
                :icon="icon"
            />
        </div>
    </div>
</template>

<script lang="ts">
import { ref, defineComponent, onMounted } from 'vue-demi'
import { uniq } from 'lodash'
import IconCard from './IconCard.vue'

export default defineComponent({
    name: 'IconsGrid',
    components: {
        IconCard
    },
    props: {},
    setup(props) {
        const iconNames = ref<string[]>([])
        onMounted(async () => {
            const icons: string[] = []
            const regex = new RegExp(/(\..*\:before)/g)
            const styleSheets: CSSStyleSheet[] =
                document.styleSheets as any as CSSStyleSheet[]
            for (const sheet of styleSheets) {
                const rules: CSSRule[] = sheet.cssRules as any as CSSRule[]
                if (!rules) {
                    continue
                }

                for (const rule of rules) {
                    if (rule.cssText.includes('icon-dl-')) {
                        const detected = regex.exec(rule.cssText)
                        if (detected) {
                            const stringToReplace = detected[0]
                            const cleaned = stringToReplace
                                .split(':before')[0]
                                .split('.path')[0]
                                .trim()
                                .replaceAll('.icon-dl-', '')
                                .replaceAll(':', '')
                            icons.push(cleaned)
                        }
                    }
                }
            }

            iconNames.value = uniq(icons)
        })
        return {
            icons: iconNames
        }
    }
})
</script>

<style lang="scss" scoped>
.container {
    height: 100%;
    width: 100%;

    .icons-container {
        padding: 15px;
        // height: 60vh;
        // overflow: scroll;
        gap: 1rem;
        display: flex;
        flex-wrap: wrap;
    }
}
</style>
