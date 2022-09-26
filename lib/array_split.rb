def array_split(array, subdivisions)
  # Protects against division-by-zero and negative values
  raise ArgumentError, "subdivisions must be greater than 0" if subdivisions <= 0
  # Protects against division-by-zero and negative values
  raise ArgumentError, "subdivisions must be less or equal to array length" if subdivisions > array.length

  chunk_size = (array.length.to_f / subdivisions.to_f).ceil # caculates chunk sizes
  chunks = []

  subdivisions.times { chunks << Array.new(chunk_size) } # fills chunks

  i = 0 # index pointer of array
  j = 0 # index pointer of chunks array
  k = 0 # index pointer of each chunk

  while i < array.length && j < chunks.length
    # when K is out-of-bounds resets k and move j
    if k >= chunks[j].length
      k = 0
      j += 1
    end

    chunks[j][k] = array[i]

    i += 1
    k += 1
  end

  chunks
end