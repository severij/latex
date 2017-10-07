# latex
Reusable LaTeX document classes

# `exercise.cls`
## Commands and environments
### `\course{...}`
Use `\course{...}` _in preample_ to add course code and name to the header.
### `\name{...}`
Use this command to add your name to the header.
### `\title{...}`
Not the same command as original LaTeX `\title`. Use this to add some kind of title to the beginning of the document, ideally just after the `\begin{document}`.
### `\ex` or `\ex[...]`
This command makes a heading for the exercise and increase the counter by one. You can also give custom header, but then there will be not any numbering and the counter won't be increased.
### `parts` environment
If there are multiple parts (a, b, c, ...) in one exercise, you can use the `parts` environment to make an alphabetical enumerated list. Add items just like with the `itemize` and the `enumerate` environments.
### `code` environment
This just basically a `lstlisting` with pretty font and background.
