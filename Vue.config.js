module.exports = {
  baseUrl: process.env.NODE_ENV === 'production'
  ? '/webapp'
  : '/',
  outputDir: 'webapp'
}