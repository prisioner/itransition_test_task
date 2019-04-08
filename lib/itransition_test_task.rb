module ItransitionTestTask
  extend self

  def max_multiplication(str)
    return unless str.is_a?(String)

    candidates = str.scan(/(?=(\d{4}))/)

    return unless candidates.any?

    candidates
      .flatten
      .map { |digit| digit.split("").map(&:to_i).inject(&:*) }
      .max
  end

  def sort_by_binaries(arr)
    arr
      .sort
      .sort_by { |el| el.to_s(2).count("1") }
  end
end
