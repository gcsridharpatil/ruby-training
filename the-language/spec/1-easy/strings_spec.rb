RSpec.describe 'strings' do
  it 'can be created with double quotes' do
    string = "Hello, world!"
    expect(string.is_a?(String)).to eq(true)
  end

  it 'can be created with single quotes' do
    string = 'Hello, you!'
    expect(string.is_a?(String)).to eq(true)
  end

  it 'can create a string with single quotes that contains double quotes within it' do
    string = '"What a curious feeling!" said Alice.'
    expect(string).to eq("\"What a curious feeling!\" said Alice.")
  end

  it 'can create a string with double quotes that contains single quotes within it' do
    string = "Isn't that useful?"
    expect(string).to eq("Isn't that useful?")
  end

  it "can use backslashes to escape the cases that don't fit" do
    double = "Jane said \"Don't\""
    single = 'Jane said "Don\'t"'

    expect(double == single).to eq(true)
  end

  it 'has flexible quoting when things get difficult' do
    # NB: Most of these options in this test aren't used commonly
    a = %(flexible quotes allow both " and ' characters)
    b = %!flexible quotes allow both " and ' characters!
    c = %{flexible quotes allow both " and ' characters}

    expect(a == b).to eq(true)
    expect(a == c).to eq(true)
  end

  it 'can handle multiple lines with flexible quoting' do
    string = %{
Humpty dumpty sat on the wall,
Humpty dumpty had a great fall
}

    expect(string.length).to eq(63)
    expect(string.lines.count).to eq(63)
    expect(string[0, 1]).to eq("\n")
  end

  it 'can also handle multiple lines with a heredoc' do
    string = <<~STRING
      Humpty dumpty sat on the wall,
      Humpty dumpty had a great fall
    STRING

    expect(string.length).to eq(62)
    expect(string.lines.count).to eq(2)
    expect(string[0, 1]).to eq("H")
  end

  it 'can also be written on multiple lines by "continuing" the string' do
    string = "Humpty dumpty sat on the wall,"\
             "Humpty dumpty had a great fall"

    expect(string.length).to eq(__)
    expect(string.lines.count).to eq(__)
    expect(string[0, 1]).to eq(__)
  end

  it 'can be concatenated with +' do
    string = 'Hello, ' + 'World!'
    expect(string).to eq("Hello, World!")
  end

  it 'does not modify the original string using +' do
    prefix = 'Hello, '
    suffix  = 'World!'
    greeting = prefix + suffix

<<<<<<< HEAD
    expect(string).to eq("Hello, World!")
    expect(greeting).to eq("Hello, ")
    expect(subject).to eq("World!")
=======
    expect(greeting).to eq(__)
    expect(prefix).to eq(__)
    expect(suffix).to eq(__)
>>>>>>> upstream/main
  end

  it 'will concatenate on the end of a string using +=' do
    original_greeting = 'Hello, '
    greeting = original_greeting
    subject  = 'World!'
    greeting += subject

    expect(original_greeting).to eq("Hello, ")
    expect(greeting).to eq("Hello, World!")
  end

  it 'will interpret escape characters with double quotes' do
    string = "\n"
    expect(string.size).to eq(1)
  end

  it "won't interpret escape characters with single quotes" do
    string = '\n'
    expect(string.size).to eq(2)
  end

  it 'does interpret some escape characters with single quotes though' do
    string = '\\\\'
    expect(string.size).to eq(2)
  end

  it 'can interpolate variable using double quotes' do
    count = 99
    string = "#{count} bottles of beer on the wall."

    expect(string).to eq("99 bottles of beer on the wall.")
  end

  it "won't interpolate variable using single quotes" do
    count = 99
    string = '#{count} bottles of beer on the wall.'

    expect(string).to eq("\#{count} bottles of beer on the wall.")
  end

  it 'will interpolate any ruby expression' do
    count = 99
    string = "#{(count - 1) / 2} bottles of beer on the wall."

    expect(string).to eq("49 bottles of beer on the wall.")
  end

  it 'can extract a substring' do
    string = 'Bacon, lettuce and tomato'

    expect(string[7, 3]).to eq("let")
    expect(string[7..9]).to eq("let")
  end

  it 'can extract a single character' do
    string = 'Bacon, lettuce and tomato'
    expect(string[1]).to eq("a")
  end

  it 'can split a string into individual characters' do
    string = 'Bacon, lettuce and tomato'

    expect(string.chars).to eq(["B",
    + "a",
    + "c",
    + "o",
    + "n",
    + ",",
    + " ",
    + "l",
    + "e",
    + "t",
    + "t",
    + "u",
    + "c",
    + "e",
    + " ",
    + "a",
    + "n",
    + "d",
    + " ",
    + "t",
    + "o",
    + "m",
    + "a",
    + "t",
    + "o"])
  end

  it 'represents single characters as strings' do
<<<<<<< HEAD
    expect(?a).to eq("a")
    expect(?a == 97).to eq(false)
=======
    # Again this isn't used very often
    expect(?a).to eq(__)
    expect(?a == 97).to eq(__)
>>>>>>> upstream/main
  end

  it 'can split a string' do
    string = 'Strings Are Fun'
    words = string.split

    expect(words).to eq(["Strings", "Are", "Fun"])
  end

  it 'can split a string on any character' do
    string = 'has:many:through'
    words = string.split(':')

    expect(words).to eq(["has", "many", "through"])
  end

  it 'can join strings' do
    words = ['Welcome', 'to', 'the', 'joinery']
    string = words.join(' ')

    expect(string).to eq("Welcome to the joinery")
  end

  it 'is a unique object' do
    a = 'Hello, world!'
    b = 'Hello, world!'

    expect(a == b).to eq(true)
    puts a.object_id
    puts b.object_id

    # What does the above 2 commands show you in the console?
    # Why do you think this is the case, have a quick think / google
    expect(a.object_id == b.object_id).to eq(false)
  end
end
