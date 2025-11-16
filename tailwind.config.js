/** @type {import('tailwindcss').Config} */
module.exports = {
  darkMode: "class",
  content: [
    "./app/**/*.{ts,tsx}",
    "./components/**/*.{ts,tsx}"
  ],
  theme: {
    extend: {
      colors: {
        accent: "#14B8A6",
        "accent-soft": "#0f766e",
        "bg-main": "#020617",
        "bg-elevated": "#020617",
        "card-border": "rgba(148, 163, 184, 0.2)"
      },
      borderRadius: {
        xl: "0.9rem",
        "2xl": "1.25rem"
      },
      boxShadow: {
        "soft": "0 18px 45px rgba(15,23,42,0.8)"
      },
      backdropBlur: {
        xs: "2px"
      }
    }
  },
  plugins: [
  require('@tailwindcss/forms'),
],

};
