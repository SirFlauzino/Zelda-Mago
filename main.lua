function love.load(arg)
  button = {}
  button.x = 300
  button.y = 300
  button.size = 50

  score = 0
  timer = 0

  myFont = love.graphics.newFont(40)
end

function love.update(dt)
timer = timer + 1
end

function love.draw()
  love.graphics.setColor(1, 0.7, 0.4)
  love.graphics.circle("fill", button.x, button.y, button.size)

  love.graphics.setFont(myFont)

  love.graphics.setColor(1,1,1)
  love.graphics.print(score,0,0)

  love.graphics.print(timer/60, 200, 0)

end

function love.mousepressed(x, y, b, isTouch, presses)
  if b == 1 then
    if DistanceBetween(button.x,button.y,love.mouse.getX(),love.mouse.getY()) < button.size then
      score = score + 1
      button.x = math.random(button.size,love.graphics.getWidth()-button.size)
      button.y = math.random(button.size,love.graphics.getHeight()-button.size)
    end
  end
end

function DistanceBetween(x1,y1,x2,y2)
  return math.sqrt((y2-y1)^2 + (x1-x2)^2)
end
