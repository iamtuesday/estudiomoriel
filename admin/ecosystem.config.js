module.exports = {
  apps: [
    {
      name: "3013-estudiomoriel-strapi",
      script: "npm",
      args: "start",
      env: {
        NODE_ENV: "production",
        PORT: 3013, // El puerto donde se ejecute el proyecto
      },
    },
  ],
};

