module Palindrome
  def palindrome?
    processed_content.reverse == processed_content
  end

  private

  def processed_content
    self.to_s.downcase
  end
end
