#!/usr/bin/env ruby

class BinarySearch

    def chop(key, a)
        chopWorker(key, a, 0, a.length)
    end

    def chopWorker(key, a, offset, length)
        raise "unsupported operation"
    end
end
