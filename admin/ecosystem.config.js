module.exports = {
  apps: [
    {
      name: "3007-estudiomoriel-service",
      script: "npm",
      args: "start",
      env: {
        NODE_ENV: "production",
        PORT: 3007, // El puerto donde se ejecute el proyecto
      },
    },
  ],
};

