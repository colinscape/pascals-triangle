#!/usr/bin/env coffee

n = process.argv[2]

pascal = (n) ->

  if n is 1
    return [1]
  else
    previousRow = pascal (n-1)
    previousRow.push(0)
    previousRow.unshift(0)
    row = []
    indices = (i for i in [1..previousRow.length-1])
    for i in indices
      row.push previousRow[i-1] + previousRow[i]
    return row

console.log pascal Number n
