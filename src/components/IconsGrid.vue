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
            const files = await (import.meta.glob('../../assets/*'))
            const filenames = Object.keys(files)
            const icons = filenames.map((filename) => {
                let cleaned = filename.replace('../../assets/', '')
                cleaned = cleaned.replace('.svg', '')
                return cleaned
            })
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
