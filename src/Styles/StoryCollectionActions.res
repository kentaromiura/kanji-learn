let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: flex;
    flex-wrap: wrap;
    justify-content: flex-end;
    gap: 6px;

    @media (max-width: 520px) {
      justify-content: flex-start;
    }
  `,
)
