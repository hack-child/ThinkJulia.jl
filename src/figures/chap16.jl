function fig16_1()
  p = TikzPicture(L"""
  \node[anchor=east](time) at (-2.5, 0) {\tt time};
  \node[draw, fill=lightgray, minimum width=3cm, minimum height=1.5cm](MyTime) at(0,0){};
  \node[anchor=west] at (-1.5, 1) {\tt MyTime};
  \node[anchor=east] (h) at(-0.25, 0.5) {\tt hour};
  \node[anchor=west] (hv) at (0.75, 0.5) {\tt 11};
  \node[anchor=east] (m) at(-0.25, 0) {\tt minute};
  \node[anchor=west] (mv) at (0.75, 0) {\tt 59};
  \node[anchor=east] (s) at(-0.25, -0.5) {\tt second};
  \node[anchor=west] (sv) at (0.75, -0.5) {\tt 30};
  \draw[-latex] (time) -- (MyTime);
  \draw[-latex] (h) -- (hv);
  \draw[-latex] (m) -- (mv);
  \draw[-latex] (s) -- (sv);
  """; options=options_svg, preamble=preamble_svg)
  save(SVG("fig161"), p)
  p.options=options_pdf
  p.preamble=preamble_pdf
  save(PDF("fig161"), p)
  nothing
end