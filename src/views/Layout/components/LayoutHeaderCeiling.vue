<script setup>
// 设置吸顶导航距离顶部一定距离后显示，通过判断滚动的距离，当滚动距离大于 .header-ceiling 高度时，显示吸顶导航
// 通过useScroll 组件来处理滚动事件
import { useScroll } from '@vueuse/core'
import { useCategoryStore } from '@/stores/category.js'

// 导航分类数据
const categoryStore = useCategoryStore()

// y为鼠标上下滚动的像素大小
const { y } = useScroll(window)

</script>

<template>
  <!-- 通过:class来动态的设置样式的名称  -->
  <div class="header-ceiling" :class="{ show: y > 85 }">
    <div class="container">
      <RouterLink class="logo" to="/"></RouterLink>
      <!-- 导航区域 -->
      <ul class="app-header-nav ">
        <li class="home" v-for="item in categoryStore.categoryList" :key="item.id">
          <RouterLink to="/">{{item.name}}</RouterLink>
        </li>
      </ul>

      <div class="right">
        <RouterLink to="/">品牌</RouterLink>
        <RouterLink to="/">专题</RouterLink>
      </div>
    </div>
  </div>
</template>

<style scoped lang="scss">
.header-ceiling {
  width: 100%;
  height: 85px;
  position: fixed;
  left: 0;
  top: 0;
  z-index: 999;
  background-color: #fff;
  border-bottom: 1px solid #e4e4e4;
  // 设置元素在Y轴移动
  transform: translateY(-100%);
  // 设置元素的透明度
  opacity: 0;

  // 设置show样式，来显示吸顶导航显示
  &.show {
    // 设置过渡动画，0.3s后 通过linear（平滑的过度速度函数）显示。（"linear"表示属性值在过渡期间以匀速变化）
    transition: all 0.3s linear;
    transform: none;
    opacity: 1;
  }

  .container {
    display: flex;
    align-items: center;
  }

  .logo {
    width: 200px;
    height: 80px;
    background: url("@/assets/images/logo.png") no-repeat right 2px;
    background-size: 160px auto;
  }

  .right {
    width: 220px;
    display: flex;
    padding-left: 40px;
    border-left: 2px solid $mainColor;

    a {
      width: 38px;
      margin-right: 40px;
      font-size: 16px;
      line-height: 1;

    }

    a:hover {
      color: $mainColor;
    }
  }


}


.app-header-nav {
  width: 820px;
  display: flex;
  padding-left: 40px;
  position: relative;
  z-index: 998;

  li {
    margin-right: 40px;
    width: 38px;
    text-align: center;

    a {
      font-size: 16px;
      line-height: 32px;
      height: 32px;
      // 设置元素为行内块元素，具有一些块级元素的特性，比如可以设置宽度、高度、内外边距等属性。
      display: inline-block;

      &:hover {
        color: $mainColor;
        border-bottom: 1px solid $mainColor;
      }
    }

  }
}
</style>