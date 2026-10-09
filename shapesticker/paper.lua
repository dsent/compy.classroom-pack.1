-- To check a drawing, add dofile("paper.lua") just after
-- clear().
-- Keep your color and shape commands below it, then run your
-- drawing file.
-- Compare the numbered lines with your paper. Remove the call
-- when finished.
require("shapes")
gfx.scale(1.6)
gfx.translate(1.5, 1.5)
gfx.setFont(gfx.newFont(12))
color("bright gray")
gfx.setLineWidth(0.1)
for n = 0, 48 do
  line(n, 0, n, 24)
  if n <= 24 then
    line(0, n, 48, n)
  end
end
color("gray")
for n = 0, 40, 10 do
  line(n, 0, n, 24)
  if n <= 20 then
    line(0, n, 48, n)
  end
end
color("bright black")
for n = 0, 48 do
  gfx.printf(n, n - 0.5, -1, 20, "center", 0, 0.05, 0.05)
  if n <= 24 then
    gfx.printf(n, -1.3, n - 0.3, 20, "right", 0, 0.05, 0.05)
  end
end
gfx.print("x", 49, -1, 0, 0.05, 0.05)
-- gfx.printf("y", -1.3, -1, 20, "right", 0, 0.05, 0.05)
gfx.setLineWidth(0.25)
