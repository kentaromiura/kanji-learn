let styled = Html.styled

let make = styled(
  Dom("main"),
  Html.css`
    height: 100dvh;
    min-height: 0;
    position: relative;
    isolation: isolate;
    overflow: hidden;
    color: #21342a;
    background:
      linear-gradient(180deg, rgba(240,246,241,.95), rgba(248,243,233,.82) 56%, rgba(235,241,238,.95)),
      #edf3ef;
    font-family: ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;

    @media (max-width: 520px) {}
  `,
)
