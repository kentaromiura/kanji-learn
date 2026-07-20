type stroke = {
  radical: bool,
  d: string,
  shapeD: string,
}

let str = React.string

let loadKanjiStrokes: (string, array<stroke> => unit, unit => unit) => unit = %raw(`(kanji, onDone, onError) => {
  const first = Array.from(String(kanji || ""))[0];
  const codepoint = first ? first.codePointAt(0) : 0;
  if (!codepoint) {
    onError();
    return;
  }
  const cache = window.__kanjiLearnKanjiVgCache || (window.__kanjiLearnKanjiVgCache = new Map());
  if (cache.has(first)) {
    const cached = cache.get(first);
    cached && cached.length ? onDone(cached) : onError();
    return;
  }
  const file = codepoint.toString(16).padStart(5, "0");
  const url = "https://raw.githubusercontent.com/KanjiVG/kanjivg/master/kanji/" + file + ".svg";
  const radicalFor = path => {
    let node = path;
    while (node) {
      if (node.getAttribute && (node.getAttribute("kvg:radical") || node.getAttribute("radical"))) {
        return true;
      }
      node = node.parentElement;
    }
    return false;
  };
  fetch(url)
    .then(response => response.ok ? response.text() : Promise.reject(new Error("KanjiVG not found")))
    .then(text => {
      const doc = new DOMParser().parseFromString(text, "image/svg+xml");
      const ns = "http://www.w3.org/2000/svg";
      const widthAt = t => {
        if (t < 0.13) return 20 - (t / 0.13) * 5;
        if (t > 0.8) return 15 - ((t - 0.8) / 0.2) * 7;
        return 15;
      };
      const sourcePaths = Array.from(doc.querySelectorAll("path"));
      const measurements = sourcePaths
        .map(path => {
          const d = path.getAttribute("d") || "";
          if (!d) return null;
          const measurePath = document.createElementNS(ns, "path");
          measurePath.setAttribute("d", d);
          let originalLength = 0;
          try {
            originalLength = measurePath.getTotalLength();
          } catch (_) {
            return null;
          }
          if (!Number.isFinite(originalLength) || originalLength < 0.5) return null;
          const end = measurePath.getPointAtLength(originalLength);
          const beforeEnd = measurePath.getPointAtLength(Math.max(0, originalLength - 4));
          const earlierEnd = measurePath.getPointAtLength(Math.max(0, originalLength - 8));
          const endDx = end.x - beforeEnd.x;
          const endDy = end.y - beforeEnd.y;
          const earlierDx = beforeEnd.x - earlierEnd.x;
          const earlierDy = beforeEnd.y - earlierEnd.y;
          const endLength = Math.hypot(endDx, endDy) || 1;
          const earlierLength = Math.hypot(earlierDx, earlierDy) || 1;
          const directionAlignment = (endDx * earlierDx + endDy * earlierDy) / (endLength * earlierLength);
          const isDownstroke = endDy > Math.abs(endDx) * 4 && directionAlignment > 0.96;
          const centerD = isDownstroke ? d + "L" + end.x + "," + (end.y + 7) : d;
          measurePath.setAttribute("d", centerD);
          const length = measurePath.getTotalLength();
          return {
            path,
            centerD,
            measurePath,
            length,
            strokeType: path.getAttribute("kvg:type") ||
              path.getAttributeNS("https://kanjivg.tagaini.net/", "type") ||
              path.getAttributeNS("http://kanjivg.tagaini.net/", "type") ||
              path.getAttribute("type") || "",
          };
        })
        .filter(Boolean);
      const tangentAt = (measurement, distance) => {
        const before = measurement.measurePath.getPointAtLength(Math.max(0, distance - 2));
        const after = measurement.measurePath.getPointAtLength(Math.min(measurement.length, distance + 2));
        const dx = after.x - before.x;
        const dy = after.y - before.y;
        const magnitude = Math.hypot(dx, dy) || 1;
        return {dx: dx / magnitude, dy: dy / magnitude};
      };
      let tightestHorizontalGap = Infinity;
      measurements.forEach((measurement, measurementIndex) => {
        const samples = Math.max(12, Math.min(28, Math.ceil(measurement.length / 3.2)));
        for (let sample = 2; sample < samples - 1; sample++) {
          const distance = measurement.length * sample / samples;
          const point = measurement.measurePath.getPointAtLength(distance);
          const tangent = tangentAt(measurement, distance);
          if (Math.abs(tangent.dx) < Math.abs(tangent.dy) * 1.8) continue;
          measurements.slice(measurementIndex + 1).forEach(other => {
            const otherSamples = Math.max(12, Math.min(28, Math.ceil(other.length / 3.2)));
            for (let otherSample = 2; otherSample < otherSamples - 1; otherSample++) {
              const otherDistance = other.length * otherSample / otherSamples;
              const otherPoint = other.measurePath.getPointAtLength(otherDistance);
              if (Math.abs(point.x - otherPoint.x) > 3.5) continue;
              const otherTangent = tangentAt(other, otherDistance);
              if (Math.abs(otherTangent.dx) < Math.abs(otherTangent.dy) * 1.8) continue;
              const alignment = Math.abs(tangent.dx * otherTangent.dx + tangent.dy * otherTangent.dy);
              if (alignment < 0.92) continue;
              const gap = Math.abs(point.y - otherPoint.y);
              if (gap > 3) tightestHorizontalGap = Math.min(tightestHorizontalGap, gap);
            }
          });
        }
      });
      const brushScale = Number.isFinite(tightestHorizontalGap)
        ? Math.max(0.5, Math.min(1, (tightestHorizontalGap - 0.5) / 15))
        : 1;
      const paths = measurements
        .map(measurement => {
          const {path, centerD, measurePath, length, strokeType} = measurement;
          const count = Math.max(10, Math.min(30, Math.ceil(length / 3.2)));
          const pointAt = distance => measurePath.getPointAtLength(Math.max(0, Math.min(length, distance)));
          const startPoint = pointAt(0);
          const endPoint = pointAt(length);
          const middlePoint = pointAt(length / 2);
          const sweepDx = endPoint.x - startPoint.x;
          const sweepDy = endPoint.y - startPoint.y;
          const sweepLength = Math.hypot(sweepDx, sweepDy) || 1;
          const sweepNormal = {x: -sweepDy / sweepLength, y: sweepDx / sweepLength};
          const straightMiddle = {x: (startPoint.x + endPoint.x) / 2, y: (startPoint.y + endPoint.y) / 2};
          const naturalBend = (middlePoint.x - straightMiddle.x) * sweepNormal.x +
            (middlePoint.y - straightMiddle.y) * sweepNormal.y;
          const sweepBend = strokeType === "㇏"
            ? Math.sign(naturalBend || 1) * Math.max(4.5, Math.min(7, Math.abs(naturalBend) * 5))
            : 0;
          const points = Array.from({length: count + 1}, (_, index) => {
            const t = index / count;
            const point = pointAt(length * t);
            const bend = sweepBend * Math.sin(Math.PI * t);
            return {x: point.x + sweepNormal.x * bend, y: point.y + sweepNormal.y * bend};
          });
          const pathPoint = point => point.x + "," + point.y;
          const revealD = sweepBend !== 0
            ? "M" + points.map(pathPoint).join("L")
            : centerD;
          const brushWidthAt = t => {
            const baseWidth = widthAt(t) * brushScale;
            if (strokeType !== "㇏" || t <= 0.76) return baseWidth;
            const finish = (t - 0.76) / 0.24;
            return baseWidth * (1 - finish) + 1.4 * finish;
          };
          const edges = points.map((point, index) => {
            const before = points[Math.max(0, index - 1)];
            const after = points[Math.min(points.length - 1, index + 1)];
            const dx = after.x - before.x;
            const dy = after.y - before.y;
            const distance = Math.hypot(dx, dy) || 1;
            const width = brushWidthAt(index / count) / 2;
            return {
              left: {x: point.x - dy / distance * width, y: point.y + dx / distance * width},
              right: {x: point.x + dy / distance * width, y: point.y - dx / distance * width},
            };
          });
          const shapeD = "M" + edges.map(edge => pathPoint(edge.left)).join("L") +
            "L" + edges.slice().reverse().map(edge => pathPoint(edge.right)).join("L") + "Z";
          return {
            radical: radicalFor(path),
            d: revealD,
            shapeD,
          };
        })
        .filter(Boolean);
      cache.set(first, paths);
      paths.length ? onDone(paths) : onError();
    })
    .catch(() => {
      cache.set(first, []);
      onError();
    });
}`)

let delayStyle: int => ReactDOM.Style.t = %raw(`delayMs => ({
  animationDelay: delayMs + "ms"
})`)

let textureStyle: string => ReactDOM.Style.t = %raw(`textureId => ({
  filter: "url(#" + textureId + ")"
})`)

let strokeDurationMs = 440
let strokeSpacingMs = 560
let finalStrokeHoldMs = 1400

@react.component
let make = (~item: KanjiData.item) => {
  let (runId, setRunId) = React.useState(() => 0)
  let (strokes, setStrokes) = React.useState(() => ([]: array<stroke>))
  let (isDrawing, setIsDrawing) = React.useState(() => false)
  let textureId = "kanji-brush-texture-" ++ Int.toString(runId)

  React.useEffect1(() => {
    let cancelled = ref(false)
    setStrokes(_ => [])
    setIsDrawing(_ => false)
    loadKanjiStrokes(
      item.kanji,
      nextStrokes =>
        if !cancelled.contents {
          setStrokes(_ => nextStrokes)
        },
      () =>
        if !cancelled.contents {
          setStrokes(_ => [])
        },
    )
    Some(() => {
      cancelled.contents = true
    })
  }, [item.kanji])

  React.useEffect2(() => {
    if isDrawing && Array.length(strokes) > 0 {
      let timer = Runtime.setTimeout(
        () => setIsDrawing(_ => false),
        finalStrokeHoldMs + strokeDurationMs + (Array.length(strokes) - 1) * strokeSpacingMs,
      )
      Some(() => Runtime.clearTimeout(timer))
    } else {
      None
    }
  }, (isDrawing, strokes))

  <DrawingGlyphButton
    type_="button"
    title={"Draw " ++ item.kanji}
    ariaLabel={"Animate KanjiVG stroke order for " ++ item.kanji}
    onClick={_ => {
      Runtime.playInterfaceClick()
      if Array.length(strokes) > 0 {
        setRunId(id => id + 1)
        setIsDrawing(_ => true)
      }
    }}
  >
    <DrawingGlyphText drawing={isDrawing}> {str(item.kanji)} </DrawingGlyphText>
    {isDrawing && Array.length(strokes) > 0
      ? <DrawingSvg viewBox="0 0 109 109" role="img" ariaLabel={"KanjiVG stroke animation for " ++ item.kanji}>
          <DrawingBrushDefs>
            <DrawingBrushTexture id={textureId} />
            {strokes
            ->Array.mapWithIndex((stroke, index) => {
              let maskId = "kanji-brush-mask-" ++ Int.toString(runId) ++ "-" ++ Int.toString(index)
              <DrawingBrushMask key={maskId} id={maskId}>
                <DrawingBrushReveal
                  d={stroke.d}
                  pathLength="1"
                  style={delayStyle(index * strokeSpacingMs)}
                />
              </DrawingBrushMask>
            })
            ->React.array}
          </DrawingBrushDefs>
          {strokes
          ->Array.mapWithIndex((stroke, index) =>
            {
              let maskId = "kanji-brush-mask-" ++ Int.toString(runId) ++ "-" ++ Int.toString(index)
              <DrawingBrushStroke key={Int.toString(runId) ++ "-" ++ Int.toString(index)}>
              <DrawingBrushShape
                d={stroke.shapeD}
                mask={"url(#" ++ maskId ++ ")"}
                style={textureStyle(textureId)}
              />
              </DrawingBrushStroke>
            }
          )
          ->React.array}
        </DrawingSvg>
      : React.null}
  </DrawingGlyphButton>
}
