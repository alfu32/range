module range

pub struct RangeIterator[T] {
mut:
	index   u64
	current T
pub:
	start T
	end   T
	step  T
}

pub fn new_range_iterator[T](start T, end T, step T) RangeIterator[T] {
	mut ri := RangeIterator[T]{0, start, start, end, step}
	return ri
}

pub fn (ri RangeIterator[T]) string() string {
	return '
	RangeIterator{
		mut:
		${ri.index} u64
		${ri.current} ${T.name}
		pub:
		${ri.start} ${T.name}
		${ri.end} ${T.name}
		${ri.step} ${T.name}
	}
	'
}

pub fn (mut iter RangeIterator[T]) next() ?T {
	if iter.current > iter.end {
		return none
	}
	defer {
		iter.index++
		iter.current += iter.step
	}
	return iter.current
}
