package utils

// Map Convert []U to []V with func transform
// Example:
//
//	slices.Map(products, func(p Product) []int64 {
//		return p.ID
//	})
func Map[U any, V any](sources []U, transfer func(u U) V) []V {
	result := make([]V, len(sources))
	for i, el := range sources {
		result[i] = transfer(el)
	}
	return result
}

// KeyBy transforms a slice or an array of structs to a map based on a pivot callback
// Example:
//
//	slices.KeyBy(products, func(p Product) (int64, string) {
//		return p.ID, p.TkSku
//	})
func KeyBy[U any, K comparable, V any](sources []U, transform func(u U) (K, V)) map[K]V {
	m := make(map[K]V)
	for _, u := range sources {
		k, v := transform(u)
		m[k] = v
	}
	return m
}

// Filter iterating over elements of a collection, returning an array of all elements predicate returns truthy for.
func Filter[U any](slices []U, predicate func(U) bool) []U {
	result := make([]U, 0, len(slices))
	for _, item := range slices {
		if predicate(item) {
			result = append(result, item)
		}
	}

	return result
}

// ForEach iterates over elements of collection and invokes iteratee for each element.
func ForEach[T any](collection []T, iteratee func(T)) {
	for _, item := range collection {
		iteratee(item)
	}
}

// Contains Check item in slice T type
func Contains[T comparable](slice []T, item T) bool {
	for _, item2 := range slice {
		if item2 == item {
			return true
		}
	}
	return false
}

// Every returns true if all elements of a subset are contained into a collection or if the subset is empty.
func Every[T comparable](collection []T, subset []T) bool {
	for _, elem := range subset {
		if !Contains(collection, elem) {
			return false
		}
	}

	return true
}
