<template>
  <div class="checkout-progress-indicator border-color p-30 radius-md">
    <div class="checkout-progress2">
      <div class="step" :class="currentMenu === 1 ? 'current' : ''" id="1">
        <span>1</span>
        <span>Url Setup</span>
      </div>
      <div class="step" :class="currentMenu === 2 ? 'current' : ''" id="2">
        <span>2</span>
        <span>Additional Setup</span>
      </div>
      <div class="step" :class="currentMenu === 3 ? 'current' : ''" id="3">
        <span>3</span>
        <span>Domain Setup</span>
      </div>
      <div class="step" :class="currentMenu === 4 ? 'current' : ''" id="4">
        <span>4</span>
        <span>Access Control Setup</span>
      </div>
      <div class="step" :class="currentMenu === 5 ? 'current' : ''" id="5">
        <span>5</span>
        <span>Finished</span>
      </div>
    </div>
  </div>
</template>

<script>

export default {
  name: "UrlCreateLeftSidebar",
  props: ['activeMenu'],
  data() {
    return {
      currentMenu: parseInt(this.activeMenu),
    }
  },
  watch: {
    activeMenu(val) {
      this.currentMenu = parseInt(val);
    }
  }
}
</script>

<style scoped>

</style>
