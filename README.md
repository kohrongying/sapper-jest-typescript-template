# Sapper-Jest-Typescript Template

Cloned from [sapper template](https://github.com/sveltejs/sapper-template)

### Features
- [x] Typescript
- [x] Jest with coverage
- [x] Cypress (comes with sapper template)

The main reason was that I wanted a fast test set up as I considered cypress as a end to end sort of integration testing. You may refer to `src/components/Nav.test.ts` for a sample test written to test individual svelte components.

### List of commands

```bash
# Run
npm run dev

# Test
npm t 
npm run test

# Watch tests
npm run test:watch

# Integration test with cypress
npm run test:integration

# Validate typescript
npm run validate
```
