let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 8px;
    color: rgba(33,52,42,.72);
    font-weight: 720;

    @media (max-width: 520px) {
      gap: 6px;
      font-size: 13px;
      max-height: 32px;
      overflow: hidden;
    }
  `,
)
