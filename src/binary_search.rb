#!/usr/bin/env ruby

class BinarySearch

    def chop(key, a)
        unless a.nil?
            return chop_worker(key, a, 0, a.length)
        end
        -1
    end

    def chop_worker(key, a, offset, length)
        remaining = length - offset
        if remaining == 0
            return -1
        end

        point = offset + remaining / 2
        if a[point] == key
            return point
        end

        if a[point] > key
            return chop_worker(key, a, offset, point)
        end

        chop_worker(key, a, point + 1, length)
    end
end
