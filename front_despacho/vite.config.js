import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

export default defineConfig({
  plugins: [react()],

  server: {
    proxy: {

      // Backend 1
      '/api/v1/ventas': {
        target: 'http://10.0.0.158:3001',
        changeOrigin: true,
        secure: false
      },

      // Backend 2
      '/api/v1/despachos': {
        target: 'http://10.0.0.132:3002',
        changeOrigin: true,
        secure: false
      }

    }
  }
})