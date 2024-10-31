import * as fs from "node:fs/promises";
import * as path from "node:path";

const src = "carbon-lang";
const out = "test/corpus/carbon-lang";
await fs.rm(out, { recursive: true });
for (const file of await fs.readdir(src, { recursive: true })) {
  const parsed = path.parse(file);
  if (parsed.ext === ".carbon") {
    const name = `${src}/${file}`;
    const contents = await Bun.file(name).text();
    const test = `===\n${name}\n===\n\n${contents}\n---\n`;
    const renamed = path.format({ ...parsed, base: "", ext: ".txt" });
    await Bun.write(`${out}/${renamed}`, test);
  }
}
