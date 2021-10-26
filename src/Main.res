// 1. Module functors

module type ConcatInterface = {
  type t
  let concat: (t, t) => t
}

module CreateConcat = (M: ConcatInterface) => {
  type t = M.t
  let concat = M.concat
}

module ConcatString = CreateConcat({
  type t = string
  let concat = (a, b) => `${a} ${b}`
})
