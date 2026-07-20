let styled = Html.styled

let make = styled(
  Dom("span"),
  Html.css`
    min-height: 28px;
    display: inline-flex;
    align-items: center;
    border-radius: 999px;
    padding: 0 10px;
    background: #21342a;
    color: #f8f3e9;
    font-size: 12px;
    font-weight: 800;

    @media (max-width: 640px) {
      justify-content: center;
    }
  `,
)
