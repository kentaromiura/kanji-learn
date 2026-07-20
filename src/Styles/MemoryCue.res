let styled = Html.styled

let make = styled(
  Dom("aside"),
  Html.css`
    display: grid;
    gap: 8px;
    border: 1px solid rgba(223,118,93,.22);
    border-left: 4px solid #df765d;
    border-radius: 8px;
    padding: 14px 16px;
    background:
      linear-gradient(180deg, rgba(255,255,255,.56), rgba(255,255,255,0)),
      rgba(255,241,230,.84);

    @media (max-width: 520px) {
      gap: 4px;
      padding: 8px 10px;
    }

    @media (max-width: 760px) and (min-width: 521px) {
      gap: 4px;
      padding: 9px 12px;
    }

    @media (max-height: 760px) and (min-width: 521px) {
      gap: 4px;
      padding: 9px 12px;
    }
  `,
)
