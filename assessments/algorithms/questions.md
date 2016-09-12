1. Implement merge sort. What's the bigO and why?
  Couldn't quite get this one - attempted solution is in mergesort.rb.
  Definitely haven't reviewed Big O in a while - is it log N because
  every time the dataset splits you perform the operation again?  


2. Write a method to reverse a string. (Hint: You cannot use reverse method)
 def reverse(str)
  reversed = []
  str.chars.each {|letter| reversed.unshift(letter)}
  reversed.join("")
 end

3. Write a method to see if string is a palindrome
  def is_palindrome?(str)
    str.reverse == str ? true : false
  end


4. Given the root note in a sorted binary search tree, how do you find the smallest element?
    I don't know if this is right, but since every parent has at most two children, just begin
    from the root and at each juncture find the smaller child until you reach a node with no children.
    Like water running down the side of a pyramid.
