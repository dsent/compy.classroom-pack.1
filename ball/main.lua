WIDTH = gfx.getWidth()
HEIGHT = gfx.getHeight()
gfx.setBackgroundColor(Color[0])

x = 512
y = 300
r = 40
dx = 200
dy = 150

function love.update(dt)
  x = x + dx * dt
  y = y + dy * dt
  if x < r then dx = -dx end
  if x > WIDTH - r then dx = -dx end
  if y < r then dy = -dy end
  if y > HEIGHT - r then dy = -dy end
end

function love.draw()
  gfx.setColor(Color[10])
  gfx.circle("fill", x, y, r)
end
