let styled = Html.styled

let make = styled(
  Dom("article"),
  Html.css`
    display: grid;
    grid-template-columns: minmax(220px, 330px) minmax(0, 1fr);
    height: 100%;
    min-height: 0;
    gap: 0;
    border: 1px solid rgba(33,52,42,.18);
    border-radius: 8px;
    padding: 0;
    background: #fffdf8;
    box-shadow: 0 26px 70px rgba(33,52,42,.16);
    overflow: hidden;

    @media (max-width: 760px) {
      grid-template-columns: 1fr;
      grid-template-rows: clamp(132px, 20dvh, 168px) minmax(0, 1fr);
      box-shadow: 0 16px 42px rgba(33,52,42,.13);
    }

    @media (max-width: 520px) {
      grid-template-rows: clamp(104px, 20dvh, 132px) minmax(0, 1fr);
      border-radius: 8px;
    }
  `,
)
