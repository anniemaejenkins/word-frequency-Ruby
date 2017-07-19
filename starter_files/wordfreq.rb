class Wordfreq
  STOP_WORDS = ['a', 'an', 'and', 'are', 'as', 'at', 'be', 'by', 'for', 'from',
    'has', 'he', 'i', 'in', 'is', 'it', 'its', 'of', 'on', 'that', 'the', 'to',
    'were', 'will', 'with']
# remove punctuation
# normalize all words to lowercase
# remove "stop words" -- words used so frequently they are ignored
# go through the file word by word and keep a count of how often each word is used

# require 'csv'

  def initialize(filename)  #read the text file into string
    File.open(filename) do |x|
      arrayofwordsIthink = x.read
      puts arrayofwordsIthink
    end
  end

  def frequency(word)   #split text into an array of words  use split
  end

  def frequencies   #count the number of times each word occurs, storing it in a hash
  end

  def top_words(number)  # the words with the highest frequency?
  end

  def print_report  #display the word frequency list
  end
end

if __FILE__ == $0
  filename = ARGV[0]
  if filename
    full_filename = File.absolute_path(filename)
    if File.exists?(full_filename)
      wf = Wordfreq.new(full_filename)
      wf.print_report
    else
      puts "#{filename} does not exist!"
    end
  else
    puts "Please give a filename as an argument."
  end
end
