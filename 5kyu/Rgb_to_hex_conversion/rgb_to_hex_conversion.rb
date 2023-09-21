# DESCRIPTION:
#   The rgb function is incomplete. Complete it so that passing in RGB decimal values will result in a hexadecimal representation being returned. Valid decimal values for RGB are 0 - 255. Any values that fall out of that range must be rounded to the closest valid value.
#
#   Note: Your answer should always be 6 characters long, the shorthand with 3 will not work here.
#
#   Examples (input --> output):
#   255, 255, 255 --> "FFFFFF"
#   255, 255, 300 --> "FFFFFF"
#   0, 0, 0       --> "000000"
#   148, 0, 211   --> "9400D3"

def rgb(r, g, b)
  return ('0' * 6) if (r + g + b).zero?

  r, g, b = [r, g, b].map { |c| [0, [255, c].min].max }

  r = r.to_s(16).rjust(2, '0')
  g = g.to_s(16).rjust(2, '0')
  b = b.to_s(16).rjust(2, '0')

  "#{r}#{g}#{b}".upcase
end