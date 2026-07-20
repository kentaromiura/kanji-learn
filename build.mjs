import fs from "fs";
import babel from "esbuild-plugin-babel";
import esbuild from "esbuild";

if (fs.existsSync("out.css")) fs.rmSync("out.css");

const prod = false && process.env.NODE_ENV === "production";

try {
  await esbuild.build({
    bundle: true,
    entryPoints: ["src/Main.res.mjs"],
    minify: prod,
    outfile: "out.js",
    plugins: [babel()],
  });

  fs.mkdirSync("out", {recursive: true});
  for (const file of ["index.html", "manifest.webmanifest", "out.css", "out.js", "sw.js"]) {
    if (fs.existsSync(file)) fs.copyFileSync(file, `out/${file}`);
  }
  if (fs.existsSync("public")) {
    fs.cpSync("public", "out/public", {recursive: true});
  }
} catch (_) {
  process.exit(1);
}
