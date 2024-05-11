import http from '@/utils/http.js'

// 测试请求
// export const getCategory = () => {
//   return http({
//     url: 'home/category/head'
//   })
// }
export const getCategory = () => http({
  url: 'home/category/head'
})
