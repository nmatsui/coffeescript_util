should = require 'should'
arrayutil = require('../lib/arrayutil')

arr = ['a', 'b', 'c', 'd', 'e']

describe "arrayutil.combination(k, [#{arr}])", ->
  it 'should exist', ->
    arrayutil.combination.should.exist
  it 'should return [] if k == 0', ->
    arrayutil.combination(0, arr).should.eql []
  it 'should return [] if k > array.length', ->
    arrayutil.combination(9999, arr).should.eql []
  it 'should return [] if k < 0', ->
    arrayutil.combination(-1, arr).should.eql []
  it 'should return [] if k is not number', ->
    arrayutil.combination('a', arr).should.eql []
  it 'should return [[a],[b],[c],[d],[e]] if k == 1', ->
    arrayutil.combination(1, arr).should.eql [['a'],['b'],['c'],['d'],['e']]
  it 'should return [[a,b,c,d,e]] if k == array.length', ->
    arrayutil.combination(arr.length, arr).should.eql [['a', 'b', 'c', 'd', 'e']]
  it 'should return [[a,b,c],[a,b,d],[a,b,e],[a,c,d],[a,c,e],[a,d,e],[b,c,d],[b,c,e],[c,d,e]] if k == 3', ->
    result = [
      ['a', 'b', 'c'],
      ['a', 'b', 'd'],
      ['a', 'b', 'e'],
      ['a', 'c', 'd'],
      ['a', 'c', 'e'],
      ['a', 'd', 'e'],
      ['b', 'c', 'd'],
      ['b', 'c', 'e'],
      ['b', 'd', 'e'],
      ['c', 'd', 'e']
    ]
    arrayutil.combination(3, arr).should.eql result

describe "arrayutil.combination(k, [])", ->
  it 'should return [] if k == 0', ->
    arrayutil.combination(0, []).should.eql []
  it 'should return [] if k > array.length', ->
    arrayutil.combination(9999, []).should.eql []
  it 'should return [] if k < 0', ->
    arrayutil.combination(-1, []).should.eql []
  it 'should return [] if k is not number', ->
    arrayutil.combination('a').should.eql []

describe "Array.prototype.combination(k) when array == #{arr}", ->
  it 'should exist', ->
    arr.combination.should.exist
  it 'should return [] if k == 0', ->
    arr.combination(0).should.eql []
  it 'should return [] if k > array.length', ->
    arr.combination(9999).should.eql []
  it 'should return [] if k < 0', ->
    arr.combination(-1).should.eql []
  it 'should return [] if k is not number', ->
    arr.combination('a').should.eql []
  it 'should return [[a],[b],[c],[d],[e]] if k == 1', ->
    arr.combination(1).should.eql [['a'],['b'],['c'],['d'],['e']]
  it 'should return [[a,b,c,d,e]] if k == array.length', ->
    arr.combination(arr.length).should.eql [['a', 'b', 'c', 'd', 'e']]
  it 'should return [[a,b,c],[a,b,d],[a,b,e],[a,c,d],[a,c,e],[a,d,e],[b,c,d],[b,c,e],[c,d,e]] if k == 3', ->
    result = [
      ['a', 'b', 'c'],
      ['a', 'b', 'd'],
      ['a', 'b', 'e'],
      ['a', 'c', 'd'],
      ['a', 'c', 'e'],
      ['a', 'd', 'e'],
      ['b', 'c', 'd'],
      ['b', 'c', 'e'],
      ['b', 'd', 'e'],
      ['c', 'd', 'e']
    ]
    arr.combination(3).should.eql result

describe "Array.prototype.combination(k) when array == []", ->
  it 'should exist', ->
    [].combination.should.exist
  it 'should return [] if k == 0', ->
    [].combination(0).should.eql []
  it 'should return [] if k > array.length', ->
    [].combination(9999).should.eql []
  it 'should return [] if k < 0', ->
    [].combination(-1).should.eql []
  it 'should return [] if k is not number', ->
    [].combination('a').should.eql []
