## range

generic range iterator

the generic type must support addition (+) and comparison(<) operators


## examples

see range_test.v for now

```v

	for value, index in new_range_iterator[i64](-100,100,10) {
		println('iter[${index}]=[${value},${index}]')
	}
```
