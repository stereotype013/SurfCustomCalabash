require 'calabash-cucumber/ibase'
require 'SurfCustomCalabash/CommonMethods'

  # tap on Done on keyboard
  def submit_keyboard
    if element_exists("* marked:'Toolbar Done Button'")
      touch("* marked:'Toolbar Done Button'")
    else
      tap_keyboard_action_key
    end
  end

  #----------------------------------------------Custom Swipe iOS-------------------------------------------------------
  def strong_swipe(dir)
    if dir == 'left'
      swipe :left,  force: :strong
    elsif dir == 'right'
      swipe :right,  force: :strong
    elsif dir == 'up'
      swipe :down,  force: :strong
    elsif dir == 'down'
      swipe :up,  force: :strong
    end
  end

  def normal_swipe(dir)
    if dir == 'left'
      swipe :left,  force: :normal
    elsif dir == 'right'
      swipe :right,  force: :normal
    elsif dir == 'up'
      swipe :down,  force: :normal
    elsif dir == 'down'
      swipe :up,  force: :normal
    end
  end

  def light_swipe(dir)
    if dir == 'left'
      swipe :left,  force: :light
    elsif dir == 'right'
      swipe :right,  force: :light
    elsif dir == 'up'
      swipe :down,  force: :light
    elsif dir == 'down'
      swipe :up,  force: :light
    end
  end

  def strong_swipe_element(element, dir)
    if dir == 'left'
      swipe :left, :query => element, force: :strong
    elsif dir == 'right'
      swipe :right, :query => element, force: :strong
    elsif dir == 'up'
      swipe :down, :query => element, force: :strong
    elsif dir == 'down'
      swipe :up, :query => element, force: :strong
    end
  end

  def normal_swipe_element(element, dir)
    if dir == 'left'
      swipe :left, :query => element, force: :normal
    elsif dir == 'right'
      swipe :right, :query => element, force: :normal
    elsif dir == 'up'
      swipe :down, :query => element, force: :normal
    elsif dir == 'down'
      swipe :up, :query => element, force: :normal
    end
  end

  def light_swipe_element(element, dir)
    if dir == 'left'
      swipe :left, :query => element, force: :light
    elsif dir == 'right'
      swipe :right, :query => element, force: :light
    elsif dir == 'up'
      swipe :down, :query => element, force: :light
    elsif dir == 'down'
      swipe :up, :query => element, force: :light
    end
  end

  def light_swipe_trait_until_exists(dir, element_destination)
    normal_swipe_until_exists(dir, element_destination)
  end

  # pull-to-refresh screen
  def ptr
    swipe(:down, :offset => {:x => 0, :y => -200})
  end
