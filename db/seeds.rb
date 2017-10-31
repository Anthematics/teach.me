# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Language.destroy_all
Chapter.destroy_all
Step.destroy_all

ruby = Language.create!(
  name: "ruby",
  description: "Ruby is a dynamic, reflective, object-oriented, general-purpose programming language"
)

user = User.create!(
  name: "Sean",
  password: "Password1#",
  password_confirmation: "Password1#",
  email: "sean@email.com",
  admin: true
)



chapter1 = Chapter.create!(
  name: "Variables",
  description: "What is a variable? What's the use of a variable? Why are they important? In this lesson, you will learn about different types of variables in Ruby. At the end of the module, practice with our fun exercises to test your knowledge, and you will be a Ruby master in no time!",
  language_id: ruby.id
)

chapter2 = Chapter.create!(
  name: "Methods",
  description: "What is a variable? What's the use of a variable? Why are they important? In this lesson, you will learn about different types of variables in Ruby. At the end of the module, practice with our fun exercises to test your knowledge, and you will be a Ruby master in no time!",
  language_id: ruby.id
)
chapter3 = Chapter.create!(
  name: "Arrays & Hashes",
  description: "What is a variable? What's the use of a variable? Why are they important?In this lesson, you will learn about different types of variables in Ruby. At the end of the module, practice with our fun exercises to test your knowledge, and you will be a Ruby master in no time!",
  language_id: ruby.id
)
chapter4 = Chapter.create!(
  name: "Loops & Iterations",
  description: "The basic building blocks",
  language_id: ruby.id
)

chapter5 = Chapter.create!(
  name: "Object Oriented Programming",
  description: "The basic building blocks",
  language_id: ruby.id
)

chapter6 = Chapter.create!(
  name: "Instance, Class & Inheritance",
  description: "The basic building blocks",
  language_id: ruby.id
)

step1 = Step.create!(
  name: "Data types",
  description: "Some of the basic <b>DataTypes</b> of Ruby are <b>Numbers</b>, <b>String</b> ('Welcome to learning Ruby!'), and <b>Boolean</b>(true or false).<br> <b>Numbers</b> without decimal points (eg. <b>1, 250, 99999</b>) are called <b>integers</b>, and numbers with decimal points (eg. <b>1.5, 150.3985, 50.0</b>) are usually called <b>floating-point numbers </b>or, more simply, <b>floats</b>.
<br>
In order to print the output, we will use <b>puts</b> before the statement.
<br><br>
It is important to remember that Ruby is case sensitive (it cares about capitalization)<br>
Here is your first exercise:
<br>
<ul><li>Set a variable using an integer,a float and a string.</li>
<li> Use following variables to set your DataTypes:
<br>
<ul>
<li> my_int = 2 </li>
<li> my_float = ? </li>
<li> my_string = ? </li>
<li> my_boolean = ? </li>
</ul>
<br>After assigning your variables, call your variables using puts or p before the variable name. <br>
<br>
Remember to Test your Code before Submitting!</li></ul>",
  chapter: chapter1
)

step1.code_tests.create(input: "my_int.class", output: "Fixnum")
step1.code_tests.create(input: "my_float.class", output: "Float")
step1.code_tests.create(input: "my_string.class", output: "String")





step2 = Step.create!(
  name: "Math",
  description: "Ruby is not limited to simple variable assignments. It also can do Math!
  We are going to focus on six arithmetic operators: <br>
  <ul>
  <li> Addition (+) </li>
  <li> Subtraction (-) </li>
  <li> Multiplication (*) </li>
  <li> Division (/) </li>
  <li> Exponentiation (**) ex: 2**3 = 8  </li>
  <li> Modulo (%) </li> <br>
  <li> Modulo returns true if the numerator is exactly divisible by denominator else returns false.</li>
  </ul>
  ex:12%3 = true <br>
  ex: 12%5 = false <br>
  <br>
  Try some math practice in the editor.<br>
  Using the following variables tp practice: <br> <br>
  <ul>
  <li> a = sum of 10 and 20  </li> <br>
  <li> b =  subtract 10 from 30 </li> <br>
  <li> c =  mulitply 5 by 10 </li> <br>
  <li> d = divide 50 by 5 </li> <br>
  <li> e = 3 to the power of 3 </li> <br>
  <li> f = Use Modulo to return a number that is not divisible by its denominator </li> <br>
  </ul>
  As per Step 1 call your variables using puts, p and check out the difference in display when you use print.<br>
  Remember to Test your Code before Submitting!",
  chapter: chapter1
)

step2.code_tests.create(input: "a",output: "30")
step2.code_tests.create(input: "b",output: "20")

step2.code_tests.create(input: "c",output: "50")
step2.code_tests.create(input: "d",output: "10")
step2.code_tests.create(input: "e",output: "27")


step3 = Step.create!(
  name: "Method",
  description: "<b>What are Methods?</b><br>
A <em>method</em> is a named sequence of instructions.
Some programming languages refer to it as a <em>function</em>. <br>
It encapsulates logic for re-use:<br>
<ul>
<li>Basically, it allows us to write code once, and reuse it in multiple places</li>
<li>A building block toward Don't Repeat Yourself (DRY)</li>
<li>Improves maintainability of our code when there's only one point of failure</li>
</ul><br>
<b>code style guide</b><br>
<ul>
<li> no spaces between method name and parameter list</li>
<li><b>Do:</b> def method(something)</li>
<li><b>Don't:</b> def method (something) </li>
</ul>
<b>Let's get to it and create Methods!</b><br><br>
<b>type</b> def double(number)<br>
<b>type</b>
 number * 2 <br>
 <b>type</b>  end<br><br>
Now you call the method and pass any number <br>
example: puts double(5) will display 10 <br><br>
Remember to Test your Code before Submitting!",
  chapter: chapter2
)
step3.code_tests.create(input: "double(6)",output: "12")
step3.code_tests.create(input: "double(9)",output: "18")
step3.code_tests.create(input: "double(11)",output: "22")

step4 = Step.create!(
  name: "Method",
  description: "<b>So...What are Methods?</b><br><?br>
A <em>method</em> is a named sequence of instructions.
Some programming languages refer to it as a <em>function</em> <br><br>
Let's try the following method!<br>
<b> A simple method to add two numbers</b><br>
<b>type</b>  def add(x,y)<br>
<b>type</b>  x + y <br><b>type</b>  end<br><br><br>
Now you can call the method and pass any two numbers <br>
example: puts add(5,12) will display 17<br>
Remember to Test your Code before Submitting!",
  chapter: chapter2
)

step4.code_tests.create(input: "add(6,2)",output: "8")
step4.code_tests.create(input: "add(4,2)",output: "6")
step4.code_tests.create(input: "add(1,1)",output: "2")


step5 = Step.create!(
  name: "Array and Hashes",
  description: "Ruby arrays are ordered, integer-indexed collections of any object.
  Each element in an array is associated with and referred to by an index.
  Array indexing starts at 0.
  Ruby arrays can hold objects such as String, Integer, Fixnum, Hash, Symbol, even other Array objects.<br><br>
  For Instance:<br>
   fruits = ['apple', 'orange', 'banana'] <br>
   mixed_array = ['me',12, 'Hi I m string', true, [ 1, 2, 3 ]]<br><br>
   Now your turn:<br>
   Build an array with 5 elements and assign the name as <b>my_array</b><br>
   Display your arrray in the console using <b>puts my_array</b>. <br> <br>
   Remember to Test your Code before Submitting!
  ",
  chapter: chapter3
)
step5.code_tests.create(input: "my_array.class", output: "Array")
step5.code_tests.create(input: "my_array.length", output: "5")

step6 = Step.create!(
  name: "Aray and Hashes",
  description: "A Hash is a collection of key-value pairs as below: <br>
  {\"employee\" = > \"salary\"} <br><br>
  It is similar to an Array, except that indexing is done via arbitrary keys of any object type, not an integer index.<br>
  If you attempt to access a hash with a key that does not exist, the method will return nil.<br>
  For example:<br>
  customer1 = { \"firstname\" => \"Will\", \"lastname\" => \"Smith\", \"profession\" => \"Actor\"}<br><br>
  If I want the firstname of customer1, the key of this <b>hash</b> is 'firstname', <br>
  customer1[\"firstname\"] returns the value <b>Will</b> <br>
  Now let's try! <br> <br>
  Create a hash and assign the name <b> my_hash</b>Use the key-value pair to create this hash<br>
  Check out your hash by using  <b>puts my_hash</b> <br>
  Now trying calling a value in a given key by using <b>puts my_hash[ ? ]</b><br><br>
  Remember to Test your Code before Submitting!",
  chapter: chapter3
)
step6.code_tests.create(input: "my_hash.class", output: "Hash")

step7 = Step.create!(
  name: "Loop & Iterations",
  description: "Loops in Ruby are used to execute the same block of code a specified number of times.<br><br>
  The most commonly used iterations that you will come across will be<br><br>
  <b>.each</b> <br>
  For example:<br>
  shopping_list = ['chips','orange','egg','milk']<br><br>
  In order to print each element of the shopping_list,type the following in the editor<br><br>
  <b>shopping_list.each do |each_item|</b> <br>
    <b>puts each_item</b><br>
  <b>end</b><br>
  Now you give it a shot!!<br> <br>
  Build an array using the variable my_list with atleast 5 elements. <br>
  Then do an iteration using <b>.each</b> to display each item in the console. <br>
  Now use a methods we already learned, we are going to use a method called <b>display_item</b> to take an array and print each item. <br><br>
  HINT! You do not need to print each_item inside the iteration as you will be calling the method display_item using <b>puts display_item(my_list)</b><br><br>
  Remember to Test your Code before Submitting!",
  chapter: chapter4
)
step7.code_tests.create(input:"display_item(my_list = [\"hi\",\"hello\"])", output: "\"hi\",\"hello\"")

step8 = Step.create!(
  name: "",
  description: "",
  chapter: chapter5
)
step9 = Step.create!(
  name: "",
  description: "",
  chapter: chapter6
)
