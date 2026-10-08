-- prepare canvas
function clear()
  local t = love.math.newTransform()
  compy.terminal.clear()
  gfx.clear()
  gfx.replaceTransform(t:scale(12.5))
  gfx.setLineJoin("miter")
  gfx.setLineWidth(0.25)
end
line = gfx.line
-- dot
function dot(x, y)
  gfx.circle("fill", x, y, 0.25)
end
-- quarter circle
function quarter(cx, cy, tx, ty)
  local rx, ry = tx - cx, ty - cy
  local a, r = math.atan2(ry, rx), math.sqrt(rx * rx + ry * ry)
  gfx.arc("fill", cx, cy, r, a, a + 0.5 * math.pi)
end
-- half circle
function half(ax, ay, bx, by)
  local cx, cy = 0.5 * (ax + bx), 0.5 * (ay + by)
  local rx, ry = bx - cx, by - cy
  local a, r = math.atan2(ry, rx), math.sqrt(rx * rx + ry * ry)
  gfx.arc("fill", cx, cy, r, a, a + math.pi)
end
-- full circle
function circle(l, r, t)
  local r = 0.5 * (r - l)
  gfx.circle("fill", l + r, t + r, r)
end
-- triangle
function triangle(ax, ay, bx, by, cx, cy)
  gfx.polygon("fill", ax, ay, bx, by, cx, cy)
end
-- square
function square(ax, ay, bx, by)
  local ex, ey = bx - ax, by - ay
  local cx, cy, dx, dy = bx - ey, by + ex, ax - ey, ay + ex
  gfx.polygon("fill", ax, ay, bx, by, cx, cy, dx, dy)
end
-- half square
function brick(ax, ay, bx, by)
  local ex, ey = 0.5 * (bx - ax), 0.5 * (by - ay)
  local cx, cy, dx, dy = bx - ey, by + ex, ax - ey, ay + ex
  gfx.polygon("fill", ax, ay, bx, by, cx, cy, dx, dy)
end
-- color setting
BRIGHT = "bright "
function color(n)
  if string.sub(n, 1, #BRIGHT) == BRIGHT then
    gfx.setColor(
      Color[Color[string.sub(n, #BRIGHT + 1)] + Color.bright]
    )
  else
    gfx.setColor(Color[Color[n]])
  end
end
