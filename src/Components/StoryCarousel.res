open StoryCollections

let str = React.string

@react.component
let make = (~kanji, ~memoryCue) => {
  let memoryCueStory =
    switch memoryCue {
    | Some(text) => [
        {
          id: "ulrike-memory-cue",
          collectionId: "ulrike-mnemonics",
          collectionName: "Ulrike's Mnemonics",
          text,
          author: Some("Ulrike's Mnemonics"),
          sourceUrl: None,
        },
      ]
    | None => []
    }
  let stories = Array.concat(memoryCueStory, storiesForKanji(kanji))
  let storyCount = Array.length(stories)
  let (activeIndex, setActiveIndex) = React.useState(() => 0)
  let active = if activeIndex >= storyCount {0} else {activeIndex}

  switch storyCount {
  | 0 => React.null
  | _ =>
    let story = stories->Array.getUnsafe(active)
    <StoryCarouselPanel>
      <StoryCarouselTitleRow>
        <SmallLabel> {str("Memory stories")} </SmallLabel>
        <StoryCarouselMeta>
          {str(story.collectionName ++ " " ++ Int.toString(active + 1) ++ " / " ++ Int.toString(storyCount))}
        </StoryCarouselMeta>
      </StoryCarouselTitleRow>
      <StoryCarouselCard key={story.collectionId ++ "-" ++ story.id}>
        <StoryCarouselText> {str(story.text)} </StoryCarouselText>
      </StoryCarouselCard>
      <StoryCarouselControls>
        {if storyCount > 1 {
            <StoryArrowButton
              title="Previous story"
              onClick={_ => setActiveIndex(index => if index <= 0 {storyCount - 1} else {index - 1})}
            >
              {str("<")}
            </StoryArrowButton>
          } else {
            <span />
          }}
        <StoryCarouselFooter>
          <span> {str(switch story.author { | Some(author) => author | None => "Community story"})} </span>
          {switch story.sourceUrl {
          | Some(url) =>
            <StorySourceLink href={url} target="_blank" rel="noreferrer">
              {str("Source")}
            </StorySourceLink>
          | None => React.null
          }}
        </StoryCarouselFooter>
        {if storyCount > 1 {
            <StoryArrowButton
              title="Next story"
              onClick={_ => setActiveIndex(index => if index + 1 >= storyCount {0} else {index + 1})}
            >
              {str(">")}
            </StoryArrowButton>
          } else {
            <span />
          }}
      </StoryCarouselControls>
    </StoryCarouselPanel>
  }
}
