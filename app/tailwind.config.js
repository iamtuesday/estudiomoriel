/** @type {import('tailwindcss').Config} */
module.exports = {
   content: ['./pages/**/*.{js,ts,jsx,tsx}', './components/**/*.{js,ts,jsx,tsx}'],
   theme: {
      extend: {
         colors: {

            primary: '#001a57',
            yellow: '#FFC600',
            secondary: '#edb970',
            content: '#606060',
            subtitle: '#707070',
            title: '#545454',
            seconsub: '#3D3D3D',
            gray: {
               100: '#4D4D4D',
               200: '#484848',
            },
            ocean: {
               100: '#001628',
            },
         },
         fontFamily: {
            roboto: 'Roboto',
            poppins: 'Poppins',
            rubik: 'Rubik',
            lato: 'Lato',
            dmsans: 'DM Sans',
            josefinsans: "Josefin Sans"
         },
         screens: {
            phone: '375px',
            tablet: '768px',
            tabletlg: '960px',
            tabletxl: '1024px',
            laptop: '1200px',
            laptoplg: '1400px',
            desktop: '1700px',
         },
      },
   },
   plugins: [],
}
