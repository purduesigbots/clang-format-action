# clang-format action

runs clang-format on the diff of the most recent commit

## why

there are already a couple versions of this action floating around ([cvra/clang-format-action](https://github.com/cvra/clang-format-action) and [IvanLudvig/clang-format-action](https://github.com/IvanLudvig/clang-format-action)) but these either

- aren't on the actions marketplace,
- aren't recently updated,
- assume a particular default style for your code (with no way to change it),
- or have some sketchy docker files

so for maximum ease of use we are providing a more robust action here

