# Story Collection Format

Story collections are optional, local user imports. The app does not bundle a collection or upload its contents. Import one from **Stats -> Story collections -> Import stories**.

```json
{
  "format": "kanji-learn-story-collection",
  "version": 1,
  "id": "my-story-collection",
  "collectionName": "My story collection",
  "attribution": "Optional attribution text.",
  "license": {
    "name": "A license name",
    "url": "https://example.com/license"
  },
  "sourceUrl": "https://example.com/collection",
  "sourceUrlTemplate": "https://example.com/study/kanji/$1",
  "storiesByKanji": {
    "一": [
      {
        "id": "one-1",
        "text": "A story for the character.",
        "author": "Optional author"
      }
    ]
  }
}
```

`sourceUrlTemplate` is optional. When supplied, `$1` is replaced with the URL-encoded kanji and shown as a source link on the story card. `license` is also optional, but supplying it allows the app to show the collection's license in Credits.

Collections are stored in the browser and are included in the existing Kanji Learn backup export. Each collection can be hidden or removed in Stats without deleting the rest of the learning data.

## Local KanjiDamage conversion

`tools/convert-kanjidamage-stories.mjs` converts a user-downloaded Anki package into this format without embedding the deck or its generated JSON in the project. It requires the macOS/Linux `unzip` and `sqlite3` commands.

```sh
node tools/convert-kanjidamage-stories.mjs KanjiDamage.apkg /private/tmp/kanjidamage.json
```

Import the resulting JSON through **Stats -> Story collections -> Import stories**. The generated collection records the [Anki Shared Deck License](https://ankiweb.net/account/terms) and the original deck URL in its own credits metadata.
