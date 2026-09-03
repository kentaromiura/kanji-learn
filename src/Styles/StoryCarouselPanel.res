let styled = Html.styled

let make = styled(
  Dom("aside"),
  Html.css`
    display: grid;
    gap: 8px;
    border: 1px solid rgba(49,116,128,.22);
    border-left: 4px solid #317480;
    border-radius: 8px;
    padding: 12px 14px;
    background: rgba(232,247,246,.76);

    @media (max-width: 520px) {
      gap: 6px;
      padding: 9px 10px;
    }
  `,
)
