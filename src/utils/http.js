// axios的封装
import axios from 'axios'

// 1、实例化 baseURL + timeout.
// `baseURL` 将自动加在 `url` 前面，除非 `url` 是一个绝对 URL。
const httpInstance = axios.create({
  // baseURL: 'http://mall-devtest.wangds.net',
  baseURL: 'http://pcapi-xiaotuxian-front-devtest.itheima.net',
  timeout: 5000
})

// 2、axios请求拦截器
httpInstance.interceptors.request.use(config => {
  return config
}, e => Promise.reject(e))

// 3、axios响应式拦截器
httpInstance.interceptors.response.use(res => res.data, e => {
  return Promise.reject(e)
})

export default httpInstance