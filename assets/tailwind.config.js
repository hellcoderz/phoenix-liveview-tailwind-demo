// See the Tailwind configuration guide for advanced usage
// https://tailwindcss.com/docs/configuration
module.exports = {
  content: [
    './js/**/*.js',
    '../lib/*_web.ex',
    '../lib/*_web/**/*.*ex',

    // We need to include the Petal dependency so the classes get picked up by JIT.
    "../deps/petal_components/**/*.*ex"
  ],
  darkMode: false,
  theme: {
    extend: {

      //  Set these to your brand colors
      //  colors: {
      //   primary: colors.blue,
      //   secondary: colors.pink,
      // }
    },
  },
  plugins: [
    require('@tailwindcss/forms')
  ]
}
