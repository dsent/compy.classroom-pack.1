SIZE = 50
WHITE = Color[15]
BLACK = Color[0]
gfx.setBackgroundColor(Color[7])

function cell(x, y, color)
  gfx.setColor(color)
  gfx.rectangle("fill", x * SIZE, y * SIZE, SIZE - 2, SIZE - 2)
end

for y = 0, 9 do
  for x = 0, 9 do
    if true then
      cell(x, y, BLACK)
    else
      cell(x, y, WHITE)
    end
  end
end
