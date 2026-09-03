let styled = Html.styled

let make = styled(
  Dom("div"),
  Html.css`
    display: flex;
    align-items: center;
    min-width: 0;
    justify-content: center;
    gap: 8px;
    color: rgba(33,52,42,.56);
    font-size: 12px;
    font-weight: 680;

    > span {
      overflow: hidden;
      text-overflow: ellipsis;
      white-space: nowrap;
    }
  `,
)
