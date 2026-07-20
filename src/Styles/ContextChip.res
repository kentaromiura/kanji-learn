let styled = Html.styled

let make = styled(
  Dom("span"),
  Html.css`
    border: 1px solid rgba(33,52,42,.14);
    border-radius: 999px;
    padding: 5px 10px;
    background: rgba(255,255,255,.58);

    @media (max-width: 520px) {
      padding: 4px 8px;
    }
  `,
)
