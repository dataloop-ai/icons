<template>
    <div class="icon-card" @click="onClick">
        <div class="icon-container" style="width: 100%">
            <dl-icon :icon="`icon-dl-${icon}`" :size="iconSize" />
        </div>
        <div class="container">
            {{ icon }}
        </div>
        <dl-tooltip> Click to copy selector to clipboard </dl-tooltip>
    </div>
</template>

<script lang="ts">
import { defineComponent, toRef } from 'vue'
import { DlIcon, DlTooltip, DlToast } from '@dataloop-ai/components'
import '../../style.css'

export default defineComponent({
    name: 'IconCard',
    components: {
        DlIcon,
        DlTooltip
    },
    props: {
        icon: { type: String, required: true },
        size: { type: String, default: '32px', required: false }
    },
    setup(props) {
        const iconSize = toRef(props, 'size')

        const onClick = async () => {
            try {
                await navigator.clipboard.writeText(`icon-dl-${props.icon}`)
                DlToast.open({
                    message: 'Copied to clipboard',
                    type: 'success',
                    duration: 500,
                    position: 'top-right'
                })
            } catch (e) {
                console.error('Failed to copy to clipboard')
            }
        }

        return {
            iconSize,
            onClick
        }
    }
})
</script>

<style lang="scss" scoped>
.icon-card {
    display: flex;
    flex-direction: column;
    place-items: center;
    height: 8vh;
    width: 8vw;
    min-width: 80px;
    min-height: 100px;
    max-width: 120px;
    max-height: 140px;
    padding: 15px;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
    transition: 0.3s;

    background: linear-gradient(
        to top,
        transparent 40%,
        var(--dl-color-info) 100%
    );
    border-radius: 5px;

    .container {
        max-height: 45%;
        display: flex;
        flex-wrap: wrap;
        align-items: center;
        text-align: center;
    }

    .icon-container {
        height: 100% !important;
        display: grid;
        place-items: center;
        height: fit-content;
        width: fit-content;
        overflow: ellipsis;
        margin-bottom: 24px;
    }
}
.icon-card:hover {
    cursor: pointer;
    box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
}

.small-text {
    align-self: flex-end;
    font-size: 0.65rem;
    color: var(--dl-color-lighter);
}
</style>
