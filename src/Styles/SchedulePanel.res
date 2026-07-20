let styled = Html.styled

let make = styled(
  Dom("aside"),
  Html.css`
    display: grid;
    gap: 7px;
    border: 1px solid rgba(112,183,189,.24);
    border-left: 4px solid #70b7bd;
    border-radius: 8px;
    padding: 10px 12px;
    background:
      linear-gradient(180deg, rgba(255,255,255,.58), rgba(255,255,255,0)),
      rgba(222,242,241,.78);

    @media (max-width: 520px) {
      gap: 5px;
      padding: 7px 9px;
    }

    @media (max-height: 760px) and (min-width: 521px) {
      padding: 8px 10px;
    }
  `,
)
