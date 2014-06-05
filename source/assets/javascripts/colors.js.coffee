hexc = (colorval) ->
  parts = colorval.match(/^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/)
  delete (parts[0])

  i = 1

  while i <= 3
    parts[i] = parseInt(parts[i]).toString(16)
    parts[i] = "0" + parts[i]  if parts[i].length is 1
    ++i
  color = "#" + parts.join("")
  return
color = ""
$("div").click ->
  x = $(this).css("backgroundColor")
  hexc x
  alert color
  return
