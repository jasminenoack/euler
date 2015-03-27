def check_row(row)
  largest_product = 0

  (row.length - 3).times do |i|
    product = row[i..i + 3].inject(:*)
    largest_product = product if product > largest_product
  end
  largest_product
end

def check_column(grid, column_index)
  largest_product = 0

  (grid.length - 3).times do |row|
    product = [
      grid[row][column_index],
      grid[row + 1 ][column_index],
      grid[row + 2 ][column_index],
      grid[row + 3 ][column_index]
    ].inject(:*)
    largest_product = product if product > largest_product
  end
  largest_product
end

def check_diaganols_to_right(grid)
  largest_product = 0

  (grid.length - 3).times do |row|
    (grid[0].length - 3).times do |column|
      product = [
        grid[row][column],
        grid[row + 1 ][column + 1 ],
        grid[row + 2 ][column + 2 ],
        grid[row + 3 ][column + 3 ]
      ].inject(:*)
      largest_product = product if product > largest_product
    end
  end
  largest_product
end

def check_diaganols_to_left(grid)
  largest_product = 0

  (grid.length - 3).times do |row|
    (grid[0].length - 1).downto(3) do |column|
      product = [
        grid[row][column],
        grid[row + 1 ][column - 1 ],
        grid[row + 2 ][column - 2 ],
        grid[row + 3 ][column - 3 ]
      ].inject(:*)
      largest_product = product if product > largest_product
    end
  end
  largest_product
end

def largest_product(grid)
  largest_product = 0
  grid.each do |row|
    row_product = check_row(row)
    largest_product = row_product if row_product > largest_product
  end

  grid.length.times do |i|
    column_product = check_column(grid, i)
    largest_product = column_product if column_product > largest_product
  end

  diaganol = check_diaganols_to_right(grid)
  largest_product = diaganol if diaganol > largest_product

  diaganol = check_diaganols_to_left(grid)
  largest_product = diaganol if diaganol > largest_product

  largest_product
end



grid = File.readlines(ARGV.shift)
  .map(&:chomp)
  .map{ |row| row.split.map(&:to_i) }

p largest_product(grid)
