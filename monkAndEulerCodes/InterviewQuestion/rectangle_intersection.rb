#Write a function, `rec_intersection(rect1, rect2)` and returns the
# intersection of the two.
#
# Rectangles are represented as a pair of coordinate-pairs: the
# bottom-left and top-right coordinates (given in `[x, y]` notation).

# rect1 =  [[x1,y1],[x2,y2]]  rect2 =  [[a1,b1],[a2,b2]]   intersection = [[x_min, y_min],[x_max, y_max]]
def rec_intersection(rect1, rect2)
  x_min = [rect1[0][0], rect2[0][0]].max
  x_max = [rect1[1][0], rect2[1][0]].min
  y_min = [rect1[0][1], rect2[0][1]].max
  y_max = [rect1[1][1], rect2[1][1]].min
  if ((x_max < x_min) || (y_max < y_min))
    return nil
  else
    return [[x_min, y_min],[x_max, y_max]]
  end
end
