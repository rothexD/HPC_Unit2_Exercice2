__kernel void vector_add(
	__global const int *A,
	__global int *C)
{
	size_t i = get_global_id(0);
	size_t j = i;

	if (i != get_global_size(0)) {
		j = i + 1 ;
	}

	C[i] = A[i] + A[j];
}
