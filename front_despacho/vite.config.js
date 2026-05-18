import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react-swc'

export default defineConfig({
  plugins: [react()],

  server: {
    proxy: {

      '/ventas': {
        target: 'http://10.0.0.158:3001',
        changeOrigin: true,
        secure: false,
        rewrite: (path) => path.replace(/^\/ventas/, '/api/v1/ventas')
      },

      '/despachos': {
        target: 'http://10.0.0.132:3002',
        changeOrigin: true,
        secure: false,
        rewrite: (path) => path.replace(/^\/despachos/, '/api/v1/despachos')
      }

    }
  }
})