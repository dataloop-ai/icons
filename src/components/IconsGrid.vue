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
import IconCard from './IconCard.vue'

export default defineComponent({
    name: 'IconsGrid',
    components: {
        IconCard
    },
    props: {},
    setup(props) {
        const iconNames = ref<string[]>([])
        const icons = import.meta.glob(
            '../../node_modules/@dataloop-ai/icons/docs/assets/**.*'
        )

        onMounted(() => {
            iconNames.value = Object.keys(icons).map(
                (path) => path.split('assets/')[1].split('.')[0]
            )
        })
        return {
            icons: iconNames
        }
    }
})
</script>

<style scoped>
.container {
    height: 100%;
    width: 100%;
}

.icons-container {
    padding: 15px;
    height: 60vh;
    overflow: scroll;
    gap: 1rem;
    display: flex;
    flex-wrap: wrap;
}
</style>
