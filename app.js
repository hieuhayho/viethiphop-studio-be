require("tsconfig-paths/register");
try {
  require("./dist/main.js");
} catch (err) {
  if (err.code === "MODULE_NOT_FOUND") {
    require("./dist/src/main.js");
  } else {
    throw err;
  }
}
