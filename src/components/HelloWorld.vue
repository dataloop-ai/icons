<template>
  <div>
    <h1>{{ msg }}</h1>

    <div class="card">
      <DlButton @click="count++">count is {{ count }}</DlButton>
      <p>
        Edit
        <code>components/HelloWorld.vue</code> to test HMR
      </p>
    </div>

    <p>
      Check out
      <DlLink
        href="https://vuejs.org/guide/quick-start.html#local"
        new-tab
        external
      >
        create-vue </DlLink
      >, the official Vue + Vite starter
    </p>
    <p>
      Install
      <DlLink href="https://github.com/johnsoncodehk/volar" new-tab external
        >Volar</DlLink
      >
      in your IDE for a better DX
    </p>
    <p class="read-the-docs">Click on the Vite and Vue logos to learn more</p>
  </div>
</template>

<script lang="ts">
import { ref, defineComponent } from "vue-demi";
import { DlButton, DlLink } from "@dataloop-ai/components";

export default defineComponent({
  name: "HelloWorld",
  components: {
    DlButton,
    DlLink,
  },
  props: {
    msg: {
      type: String,
      required: true,
    },
  },
  setup(props) {
    const count = ref(0);
    return {
      count,
    };
  },
});
</script>

<style scoped>
.read-the-docs {
  color: #888;
}
</style>
