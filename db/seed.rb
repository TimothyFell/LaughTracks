require ‘./app/models/comedian.rb’
require ‘./app/models/special.rb’
require ‘activerecord-import/base’


# Create Comedian 1
comedian_1 = Comedian.create()
special_1a = comedian_1.specials.create()
special_1b = comedian_1.specials.create()
special_1c = comedian_1.specials.create()

# Create Comedian 2
comedian_2 = Comedian.create()
special_2a = comedian_2.specials.create()
special_2b = comedian_2.specials.create()
special_2c = comedian_2.specials.create()

# Create Comedian 3
comedian_3 = Comedian.create()
special_3a = comedian_3.specials.create()
special_3b = comedian_3.specials.create()
special_3c = comedian_3.specials.create()

# Create Comedian 4
comedian_4 = Comedian.create()
special_4a = comedian_4.specials.create()
special_4b = comedian_4.specials.create()
special_4c = comedian_4.specials.create()

# Create Comedian 5
comedian_5 = Comedian.create()
special_5a = comedian_5.specials.create()
special_5b = comedian_5.specials.create()
special_5c = comedian_5.specials.create()

# Create Comedian 6
comedian_6 = Comedian.create()
special_6a = comedian_6.specials.create()
special_6b = comedian_6.specials.create()
special_6c = comedian_6.specials.create()

# Create Comedian 7
comedian_7 = Comedian.create()
special_7a = comedian_7.specials.create()
special_7b = comedian_7.specials.create()
special_7c = comedian_7.specials.create()

# Create Comedian 8
comedian_8 = Comedian.create()
special_8a = comedian_8.specials.create()
special_8b = comedian_8.specials.create()
special_8c = comedian_8.specials.create()

# Create Comedian 9
comedian_9 = Comedian.create()
special_9a = comedian_9.specials.create()
special_9b = comedian_9.specials.create()
special_9c = comedian_9.specials.create()

# Create Comedian 10
comedian_10 = Comedian.create()
special_10a = comedian_10.specials.create()
special_10b = comedian_10.specials.create()
special_10c = comedian_10.specials.create()
