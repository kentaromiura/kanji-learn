type story = {
  id: string,
  collectionId: string,
  collectionName: string,
  text: string,
  author: option<string>,
  sourceUrl: option<string>,
}

type collection = {
  id: string,
  collectionName: string,
  attribution: option<string>,
  licenseName: string,
  licenseUrl: option<string>,
  sourceUrl: option<string>,
  storyCount: int,
  visible: bool,
}

let listCollections: unit => array<collection> = %raw(`() => {
  const key = "kanji-learn-story-collections-v1";
  try {
    const collections = JSON.parse(window.localStorage.getItem(key) || "[]");
    if (!Array.isArray(collections)) return [];
    return collections.map(collection => ({
      id: collection.id,
      collectionName: collection.collectionName,
      attribution: collection.attribution || undefined,
      licenseName: collection.licenseName || "License not supplied",
      licenseUrl: collection.licenseUrl || undefined,
      sourceUrl: collection.sourceUrl || undefined,
      storyCount: Number(collection.storyCount || 0),
      visible: collection.visible !== false
    }));
  } catch (_) {
    return [];
  }
}`)

let storiesForKanji: string => array<story> = %raw(`kanji => {
  const key = "kanji-learn-story-collections-v1";
  const sourceUrlFor = (template, character) => {
    if (typeof template !== "string" || !template) return undefined;
    return template.replace("$1", encodeURIComponent(character));
  };
  try {
    const collections = JSON.parse(window.localStorage.getItem(key) || "[]");
    if (!Array.isArray(collections)) return [];
    return collections.flatMap(collection => {
      if (collection.visible === false) return [];
      const stories = collection.storiesByKanji && collection.storiesByKanji[kanji];
      if (!Array.isArray(stories)) return [];
      return stories.map((story, index) => ({
        id: String(story.id || index),
        collectionId: collection.id,
        collectionName: collection.collectionName,
        text: typeof story === "string" ? story : story.text,
        author: typeof story === "object" && typeof story.author === "string" ? story.author : undefined,
        sourceUrl: sourceUrlFor(collection.sourceUrlTemplate, kanji)
      })).filter(story => typeof story.text === "string" && story.text.trim());
    });
  } catch (_) {
    return [];
  }
}`)

let importStoryCollection: (unit => unit) => unit = %raw(`onDone => {
  const key = "kanji-learn-story-collections-v1";
  const slugify = value => String(value || "story-collection")
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-+|-+$/g, "") || "story-collection";
  const countStories = storiesByKanji => Object.values(storiesByKanji)
    .reduce((total, stories) => total + (Array.isArray(stories) ? stories.length : 0), 0);
  const normalize = source => {
    if (!source || typeof source !== "object") throw new Error("Invalid story collection");
    const collectionName = typeof source.collectionName === "string" ? source.collectionName.trim() : "";
    if (!collectionName) throw new Error("Story collections need a collectionName");
    const sourceStories = source.storiesByKanji || source.stories;
    if (!sourceStories || typeof sourceStories !== "object" || Array.isArray(sourceStories)) {
      throw new Error("Story collections need a storiesByKanji object");
    }
    const storiesByKanji = {};
    for (const [kanji, rawStories] of Object.entries(sourceStories)) {
      const stories = Array.isArray(rawStories) ? rawStories : [rawStories];
      const normalizedStories = stories.map((story, index) => {
        if (typeof story === "string") return { id: String(index), text: story.trim() };
        if (!story || typeof story.text !== "string") return null;
        const item = { id: String(story.id || index), text: story.text.trim() };
        if (typeof story.author === "string" && story.author.trim()) item.author = story.author.trim();
        return item;
      }).filter(Boolean).filter(story => story.text);
      if (normalizedStories.length) storiesByKanji[kanji] = normalizedStories;
    }
    const storyCount = countStories(storiesByKanji);
    if (!storyCount) throw new Error("No usable stories found in that collection");
    const license = source.license && typeof source.license === "object" ? source.license : {};
    const licenseName = typeof license.name === "string" ? license.name : (typeof source.licenseName === "string" ? source.licenseName : "License not supplied");
    const licenseUrl = typeof license.url === "string" ? license.url : (typeof source.licenseUrl === "string" ? source.licenseUrl : undefined);
    return {
      id: typeof source.id === "string" && source.id.trim() ? slugify(source.id) : slugify(collectionName),
      collectionName,
      attribution: typeof source.attribution === "string" ? source.attribution : undefined,
      licenseName,
      licenseUrl,
      sourceUrl: typeof source.sourceUrl === "string" ? source.sourceUrl : undefined,
      sourceUrlTemplate: typeof source.sourceUrlTemplate === "string" ? source.sourceUrlTemplate : undefined,
      storiesByKanji,
      storyCount,
      visible: source.visible !== false
    };
  };
  const save = source => {
    const collection = normalize(source);
    const existing = JSON.parse(window.localStorage.getItem(key) || "[]");
    const collections = Array.isArray(existing) ? existing.filter(item => item.id !== collection.id) : [];
    collections.push(collection);
    window.localStorage.setItem(key, JSON.stringify(collections));
    return collection;
  };
  const input = document.createElement("input");
  input.type = "file";
  input.accept = "application/json,.json";
  input.addEventListener("change", () => {
    const file = input.files && input.files[0];
    if (!file) return;
    const reader = new FileReader();
    reader.onload = () => {
      try {
        const collection = save(JSON.parse(String(reader.result || "{}")));
        window.alert("Imported " + collection.collectionName + " with " + collection.storyCount + " stories.");
        if (typeof onDone === "function") onDone();
      } catch (error) {
        window.alert(error && error.message ? error.message : "Could not import story collection");
      }
    };
    reader.readAsText(file);
  });
  input.click();
}`)

let setCollectionVisible: (string, bool) => unit = %raw(`(id, visible) => {
  const key = "kanji-learn-story-collections-v1";
  try {
    const collections = JSON.parse(window.localStorage.getItem(key) || "[]");
    if (!Array.isArray(collections)) return;
    window.localStorage.setItem(key, JSON.stringify(collections.map(collection =>
      collection.id === id ? {...collection, visible} : collection
    )));
  } catch (_) {}
}`)

let removeCollection: string => unit = %raw(`id => {
  const key = "kanji-learn-story-collections-v1";
  try {
    const collections = JSON.parse(window.localStorage.getItem(key) || "[]");
    if (!Array.isArray(collections)) return;
    window.localStorage.setItem(key, JSON.stringify(collections.filter(collection => collection.id !== id)));
  } catch (_) {}
}`)
