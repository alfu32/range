module range

fn test_range_create_u64() {
	mut ri := new_range_iterator[u64](1, 100, 10)
	println(ri.string())

	assert ri.start == 1
	assert ri.current == 1
	assert ri.index == 0
}

fn test_range_create_int() {
	mut ri := new_range_iterator[i64](-100, 100, 10)
	println(ri.string())

	assert ri.start == -100
	assert ri.current == -100
	assert ri.index == 0
}

fn test_range_iterate_u64() {
	mut ri := new_range_iterator[u64](1, 100, 10)
	println(ri.string())
	mut count := 0

	for value, index in ri {
		println('iter[${index}]=[${value},${index}]')
		count++
	}

	println(count)

	assert count == 10
}

fn test_range_iterate_i64() {
	mut ri := new_range_iterator[i64](-100, 100, 10)
	println(ri.string())
	mut count := 0

	for value, index in ri {
		println('iter[${index}]=[${value},${index}]')
		count++
	}

	println(count)

	assert count == 21
}

fn test_range_iterate_i64_2() {
	mut count := 0
	for value, index in new_range_iterator[i64](-100, 100, 10) {
		println('iter[${index}]=[${value},${index}]')
		count++
	}
	assert count == 21
}
