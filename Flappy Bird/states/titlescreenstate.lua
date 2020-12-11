TitleScreenState = Class{__includes = BaseState}

function TitleScreenState:update(dt)
    if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
        gStateMachine:change('play')
    end
end

function TitleScreenState:render()
    love.graphics.setFont(flappyFont)
    love.graphics.printf('Flappy Ghost!', 0, 64, virtual_width, 'center')
    love.graphics.setFont(mediumFont)
    love.graphics.printf('Hit Enter', 0, 110, virtual_width, 'center')
end