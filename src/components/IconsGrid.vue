<template>
    <div class="container">
        <div style="margin: 2vh 8vw">
            <dl-search
                v-model="search"
                placeholder="Search for a specific icon.."
            />
        </div>
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
import { ref, defineComponent, onMounted, watch, computed } from 'vue-demi'
import { uniq } from 'lodash'
import IconCard from './IconCard.vue'
import { DlSearch } from '@dataloop-ai/components'

export default defineComponent({
    name: 'IconsGrid',
    components: {
        IconCard,
        DlSearch
    },
    props: {},
    setup(props) {
        const search = ref('')
        const iconNames = ref<string[]>([])
        onMounted(async () => {
            const files = await import.meta.glob('../../assets/*')
            const filenames = Object.keys(files)
            const icons = filenames.map((filename) => {
                let cleaned = filename.replace('../../assets/', '')
                cleaned = cleaned.replace('.svg', '')
                return cleaned
            })
            iconNames.value = uniq(icons)
        })

        const filteredIcons = computed(() => {
            if (search.value && search.value.length > 0) {
                const termToSearch = search.value.replace('icon-dl-', '')
                return iconNames.value.filter((icon) =>
                    icon.includes(termToSearch)
                )
            } else {
                return iconNames.value
            }
        })

        return {
            icons: filteredIcons,
            search
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
