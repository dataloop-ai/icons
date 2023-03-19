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
            const styleModule: any = await import.meta
                .glob('../../style.css')
            const modules = Object.values(styleModule)
            console.log(styleModule, modules)
            const iconsModuleImport = modules[0] as any
            const iconsModule = await iconsModuleImport()
            const styleText = iconsModule.default
            const regex = new RegExp(/(\..*\:before)/g)
            const split = styleText.split('\n')
            const icons: string[] = []
            for (const s of split) {
                const detected = regex.exec(s)
                if (detected) {
                    const stringToReplace = detected[0]
                    const cleaned = stringToReplace
                        .split(':before')[0]
                        .split('.path')[0]
                        .trim()
                        .replaceAll('.icon-dl-', '')
                    icons.push(cleaned)
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
