type Base.direction = {still} / {up} / {down} / {left} / {right}

type Base.pos = {
  x : int
  y : int
}

type Base.t = {
  pos       : Base.pos
  dir       : Base.direction
  cur_step  : int /* Current step */
  max_steps : int /* Max steps in the move (determines speed) */
}

type Pacman.t = {
  base        : Base.t
  next_dir    : Base.direction
  mouth_state : int
  mouth_incr  : int
  mouth_steps : int
}

type Ghost.ai =
    {dumb}
  / {guard}

type Ghost.t = {
  ai         : Ghost.ai
  base       : Base.t
  color      : color
}

type Game.status = {
  pacman      : Pacman.t
  ghosts      : list(Ghost.t)
  food        : set(Base.pos)
  score       : int
}