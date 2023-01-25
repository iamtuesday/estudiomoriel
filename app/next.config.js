/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  swcMinify: true,
  images: {
    domains: ['tuesdays3.sfo3.digitaloceanspaces.com']
  },
  i18n:{
    locales:["en","es"],
    defaultLocale:"en"
  }
}

module.exports = nextConfig
