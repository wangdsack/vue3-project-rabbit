<script setup>
import LayoutNav from './components/LayoutNav.vue'
import LayoutHeader from './components/LayoutHeader.vue'
import LayoutFooter from './components/LayoutFooter.vue'
import LayoutHeaderCeiling from './components/LayoutHeaderCeiling.vue'
import { useCategoryStore } from '@/stores/category.js'
import { onMounted } from 'vue'

const categoryStore = useCategoryStore()

// 调用导航接口获取导航数据
onMounted(() => {
  categoryStore.getCategory()
})

</script>

<template>
  <LayoutHeaderCeiling />
  <LayoutNav />
  <LayoutHeader />
  <LayoutFooter />

  <RouterView />
</template>