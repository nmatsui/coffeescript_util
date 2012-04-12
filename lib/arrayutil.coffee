combination = (k, arr) ->
  return []                  unless typeof k == 'number'
  return []                  if k <  0
  return []                  if k == 0
  return []                  if k >  arr.length
  return arr.map((x) -> [x]) if k == 1
  return [arr]               if k == arr.length
  tmp = arr.map (a) -> a
  head = tmp.shift()
  combination(k - 1, tmp).map((a) -> [head].concat a).concat combination(k, tmp)

if typeof Array.prototype.combination == 'undefined'
  Array.prototype.combination = (k) -> combination(k, this)
exports.combination =  combination
