function love.load()
    font = love.graphics.newFont('lolita.ttc', 32)
    image = love.graphics.newImage("img/love-ball.png")
    love.mouse.setVisible(false)
end

function love.draw()
    --local x, y = love.mouse.getPosition()
    --local x =love.mouse.getX()
    --local y = love.mouse.getY()
    love.graphics.setFont(font)
    love.graphics.draw(image, 400, 300)
    if love.mouse.isDown(1) then
        love.graphics.print("left mouse button is down", 50, 50)
    end
    if love.mouse.isDown(2) then
        love.graphics.print("right mouse button is down", 50, 50)
    end
    if love.mouse.isDown(3) then
        love.graphics.print("middle mouse button is down", 50, 50)
    end
end
function love.keypressed(k)
    if k == "v" then
        if love.mouse.isVisible() then
            love.mouse.setVisible(false)
        else
            love.mouse.setVisible(true)
        end
    end
end
--function love.keypressed(s,unicode)
--    local x,y= math.random(0,800),math.random(0,600)
--    love.mouse.setPosition(x,y)
--end