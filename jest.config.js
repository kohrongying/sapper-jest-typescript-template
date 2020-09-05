module.exports = {
  transform: {
    "^.+\\.js$": "babel-jest",
    "^.+\\.svelte$": "svelte-jester"
  },
  moduleFileExtensions: ["js", "svelte"],
  testPathIgnorePatterns: ["node_modules"],
  bail: false,
  verbose: true,
  transformIgnorePatterns: ["node_modules"],

  // jest-dom adds custom jest matchers for asserting on DOM nodes.
  // allows you to do things like:
  // expect(element).toHaveTextContent(/react/i)
  // learn more: https://github.com/testing-library/jest-dom
  setupFilesAfterEnv: ["@testing-library/jest-dom/extend-expect"]
};