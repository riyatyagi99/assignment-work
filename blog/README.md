# blog

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



Flutter Textfield
:::section{.abstract}

Overview
Textfields are a crucial UI component in Flutter, providing a convenient way for users to fill in or enter the data by writing. By using the Textfield widget, developers can easily create and customise flutter textfield, changing their appearance and behavior as necessary. TextFields are highly versatile and are widely used in a variety of app types, making them a valuable addition to any developer’s toolkit. They are intuitive to use, making the user experience more straightforward and streamlined. Whether creating a new app or updating an existing one, textfields plays a vital role in taking input from users and using the data accrodingly.

:::

:::section{.main}

Introduction
TextField is a Flutter widget that is helpful in getting input from users, like in registration, sign-in, form filling, calculations, and  many more places. There will almost certainly be no app that does not make use of the flutter textfield widget.

Flutter provides two types of textfields, which are “TextField” and “TextFormField” (with some extra properties). We will study both widgets by discussing their properties.

Just by writing TextField(), we get this view.


TextField()



:::

:::section{.main}

How to use TextField widget in the Flutter app
To use flutter textfield widget, you just have to write TextField() and pass the required properties according to your needs.
You can fully customise your widget by width, height, border color, without border, label, hint, input type, making fields compulsory, styling text to borders, etc.

There are to flutter textfields-

TextField - Which is normally use everywhere and you do not want to validate the user input.
TextFormField - This is used when you want to validate the inputs from the user and want to show an error message and a red border with validator property.
:::

:::section{.main}

Common attributes used with the TextField widget
decoration - This is very main property of flutter textfields which helps in styling a lot of things like borders, hint style, content padding,icons etc. It returns InputDecoration(), which has properties like -
label- It is an optional widget that describes the input field.
floatingLabelBehavior-This means how the label widget should be displayed.
suffixIcon- This returns a widget that appears after editable text inside decoration only.
prefixIcon-This returns a widget that appears before editable text inside decoration only.
border - It returns OutlineInputBorder(), and you can pass the border width, colour, and radius of the borders.

labelText - It is optional and describes the flutter textfield and is controlled by the floatingLabelBehavior property.

hintText- What hint can we give to user, like, write name, write email, etc.

icon - This return a widget which shows before the input field and outside of the decoration’s container.

Below is the code for all these properties to help you understand more about their usage.


SizedBox(
width: 300,
child: TextFormField(
decoration:  const InputDecoration(
focusedBorder: OutlineInputBorder(
borderSide: BorderSide(
width: 2,
color: Colors.teal
)
),
border:OutlineInputBorder() ,
icon: Icon(Icons.person),
hintText: "Write your  name",
labelText: "Name",
labelStyle: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
floatingLabelBehavior: FloatingLabelBehavior.always,
suffixIcon: Icon(Icons.close),
fillColor: Colors.black12,
filled: true
),
))



:::

:::section{.main}

How to retrieve the value of a TextField?
onChanged method
This method of flutter textfield is triggered when textfield’s content changes. It helps in performing various actions in response, like updating the UI, validating user input, triggering API calls, and many more. Remember to wrap your textfield in a Widget to use the setState method to update the value.
The callback function receives a single value, which is the updated value of the text field.


String userInput = '';

TextField(
onChanged: (value) {
setState(() {
userInput = value;
});
},
)

// validation

onChanged: (value) {
if (value.length < 10) {
// Show an error message or change the text field's style
}
},

// UI update

onChanged: (value) {
if (value.isNotEmpty) {
// Enable a button or show a widget
} else {
// Disable the button or hide the widget
}
},


// API operations

onChanged: (value) {
// Perform filtering or search  based on the input value
},

Using Controllers
To get the value entered by a user, you have to create a TextEditingController and pass this value to controller property of TextField or TextFormField. This TextEditingController class helps in managing text field’s value, selection, and perform various operations on the text.

Let’s understand the flutter textfield’s controllers through some steps and code.

Create a TextEditingController’s instance first outside the build method.

TextEditingController textController =TextEditingController();

Now pass the instance of TextEditingController to the controller property of flutter textfield.

TextField(
controller: textController,
)

To retrieve the controller’s value, you can use text property of TextEditingController.

String value = textController.text;

To clear the controller’s value, you can use clear method and this will clear the user entered data.

textController.clear();

You can also observe and respond to the flutter textfield’s value by adding a listener to the TextEditingController.

textController.addListener(() {
// Handle the changes
});

:::section{.tip}

Note 📝:

Always dispose your TextEditingControllers when you are finished using the controllers in the dispose() method of flutter.


final textController=TextEditingController();


@override
void dispose() {
textController.dispose();
super.dispose();
}

:::

:::

:::section{.main}

Advanced TextField Functionality
How to make TextField expandable?
To expand the flutter textfield, you have to pass some fields. You have to pass minLines and maxLines property. You can also pass maxLength property for counting the length of characters.

SizedBox(
width: 300,
child: TextFormField(
minLines: 1,
maxLines: 5,
//maxLength: 1000,
decoration:  InputDecoration(
labelText: "Expandable TextField",
border:  OutlineInputBorder(),
floatingLabelBehavior: FloatingLabelBehavior.auto),
),
)


How to control the size of TextField value?
Giving size to a flutter textfield means what width we should give to our textfield. You can wrap the widget with the SizedBox() widget and pass width inside sizedBox.


SizedBox(
width: 200,
child: TextFormField(
keyboardType: TextInputType.text,
decoration: const InputDecoration(
border: OutlineInputBorder(),
),
))


How to obscure text field value?
Obscure means we have to hide our text so that one can not see what we have written like in password, OTP and many other things.
To do this, you just have to pass bool value to obscure property. True means text is hidden and False is for showing the text.

SizedBox(
width: 300,
child: TextFormField(
obscureText: true,
decoration: const InputDecoration(
border: OutlineInputBorder(),
),
))




Implementing autocomplete suggestions with the TextField widget
To implement this functionality in flutter textfield, you have to follow some steps to get the results.

Define TextEditingController , a list of items you want to select an item from and the filtered suggetions as you start typing something.

final textController = TextEditingController();

final List<String> suggestionsList = ['Volleyball', 'Cricket', 'Basketball',
'Football',"Skating", "Badminton","Boxing","Swimming"];

List<String> filteredSuggestions = [];

Add a listener to the TextEditingController and pass a method to get the filtered suggetions as user starts typing and also dispose the controller value inside dispose method.
@override
void initState() {
super.initState();
textController.addListener(_onTextChanged);
}

void _onTextChanged() {
setState(() {
final input = textController.text;
filteredSuggestions = suggestionsList
.where((suggestion) =>
suggestion.toLowerCase().contains(input.toLowerCase()))
.toList();
});
}

@override
void dispose() {
textController.dispose();
super.dispose();
}

Then we display the filtered suggetions in ListView.builder and in the onTap method, we update the flutter Texfield’s text and clears the suggetions.

// inside  Widget build(BuildContext context) {}


TextField(
controller: textController,
decoration: InputDecoration(
labelText: 'Search your game',
),
),
ListView.builder(
shrinkWrap: true,
itemCount: filteredSuggestions.length,
itemBuilder: (context, index) {
final suggestion = filteredSuggestions[index];
return ListTile(
title: Text(suggestion),
onTap: () {
setState(() {
textController.text = suggestion;
filteredSuggestions.clear();
});
},
);
},
),




Adding error handling for incorrect user input
TextFormField Widget
For this we use, TextFormField widget of Flutter. There is a validator property of this widget which validates the user input and displays an error text or error widget if the input is wrong.

Create a TextEditingController and a GlobalKey to be used in the widgets.
Wrap the flutter textfield in the Form widget and pass the formKey inside key property to identify the widget.
Then on the onTap function of the button, validate the user input on the current state of formKey and pass the error message or error border if the input is wrong.

TextEditingController textController=TextEditingController();
final formKey = GlobalKey<FormState>();

        Form(
                key: formKey,
                child: SizedBox(width: 300,
                    child: TextFormField(
                      controller: textController,
                      decoration:  const InputDecoration(
                          border:OutlineInputBorder() ,
                      ),
                      validator: (value){
                         if(value!.isEmpty){
                           return 'Cannot be empty';
                         }else{
                           return null;
                         }
                      },
                    )

                ),
              ),
              SizedBox(height: 50,),
              ElevatedButton(onPressed: (){
                final isValid = formKey
                    .currentState!
                    .validate();
                if (!isValid) return;
              }
                  , child: Text("Click Here"))




:::

:::section{.main}

Handling Keyboard Interactions
1. We can show differnt actions for keyboard when the flutter textfield is focussed. We can pass different actions to textInputAction like -

textInputAction: TextInputAction.search
TextInputAction.done


TextInputAction.next


TextInputAction.send and many more


2. When we enter some data in flutter textfield, then keyboard still persits on the screen.
   To dismiss the keyboard, you have to touch anywhere on the screen and the keyboard will dismiss. This is acheived by -
   Wrap your Scaffold() in GestureDetector() and unfocus the FocusScope on tap.


GestureDetector(
onTap: () {
FocusScope.of(context).unfocus();
},
child: Scaffold(
appBar: AppBar(
title: const Text("Keyboard Dismiss"),
),
),
);

:::

:::section{.main}

Best Practices for TextField Implementation
Try using TextFormField instead of TextField as it is the advanced version of flutter textfields.

Try to wrap your base widget like Scaffold in GestureDetector and pass FoucusScope to unfocus on the tap action as shown in the above section of “Handling Keyboard Interactions” topic.

In sign up forms or where many flutter textfields are used in a column, we see an overflow error. To avoid this, we should always wrap our textfield or column (containing multiple textfields) in SingleChildScrollView widget.



The use of flutter textfields is very common and are used everywhere on almost all the screens.
To use it make a common class and import and use it at the required places. Below is the example to understand more.
This is the commontextfield.dart class where all the properties are defined to pass the dynamic data inside these fields accroding to our need.

//common_textfield.dart

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommonTextField extends StatelessWidget {
final TextEditingController? controller;
final InputDecoration? inputDecoration;
final TextInputType? textInputType;
final int? lengthLimit;
final TextInputAction? textInputAction;
final String? Function(String?)? validator;
final int? maxLines;
final bool? enabled;
final FocusNode? focusNode;
final String? Function(String?)? onChanged;
final void Function()? onTap;
void Function(String)? onFieldSubmitted;

CommonTextField(
{Key? key,
this.controller,
this.inputDecoration,
this.textInputType,
this.lengthLimit,
this.textInputAction,
this.validator,
this.focusNode,
this.maxLines,
this.enabled,
this.onChanged,
this.onTap,
this.onFieldSubmitted

     })
     : super(key: key);

@override
Widget build(BuildContext context) {
return TextFormField(
controller: controller,
autovalidateMode: AutovalidateMode.onUserInteraction,
focusNode: focusNode,
validator:validator ??  (value) {
if (value!.isEmpty) {
return '';
} else {
return null;
}
},
onFieldSubmitted:onFieldSubmitted ,
onTap: onTap,
inputFormatters: [
LengthLimitingTextInputFormatter(lengthLimit),
],
maxLines: maxLines,
onChanged: onChanged,
keyboardType: textInputType,
textInputAction: textInputAction,
decoration:inputDecoration,
enabled: enabled,
);
}
}

We are going to use the above class like this where we need to use the flutter textfields.
Define a TextEditingController variable on top and pass it inside the class as shown below.


     final emailController=TextEditingController();
	 
	 CommonTextField(
                       controller: emailController,
                        maxLines:10,
		        onChanged:(value){},
						
			),
:::

:::section{.main}

Example App
Below is the example for using flutter textfield with its various functionalities.

main.dart - We will call TextFieldDemo() class from here.

//main.dart


import 'package:blog/textfield.dart';
import 'package:flutter/material.dart';


void main() {
runApp(const MyApp());

}

class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TextFieldDemo(),
    );
}
}

texfield.dart - This file contains both types of textfields and you will see their usage. Most of the properties are already discussed in this article and we will discover some more in this example.
If enabled: false, then you cannot interact with flutter textfield and you will have to wrap the widget with GestureDetector to get the controller’s value. You will not be able to see the cursor as shown in third textfield.
Generally used, when you have to select some date or time.

// texfield.dart

import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
const TextFieldDemo({Key? key}) : super(key: key);

@override
State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {

TextEditingController textControllerOne=TextEditingController();
TextEditingController textControllerTwo=TextEditingController();
TextEditingController textControllerThree=TextEditingController();
final formKey = GlobalKey<FormState>();

@override
void dispose() {
textControllerOne.dispose();
textControllerTwo.dispose();
textControllerThree.dispose();
super.dispose();
}

@override
Widget build(BuildContext context) {
return GestureDetector(
onTap: () {
FocusScope.of(context).unfocus();
},
child: Scaffold(
appBar: AppBar(
title: const Text("TextFields"),
),
body: Container(
height: MediaQuery.of(context).size.height,
width: MediaQuery.of(context).size.width,
padding: const EdgeInsets.all(30.0),
child: SingleChildScrollView(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
SizedBox(height: 20,),
SizedBox(width: 300,
child: TextFormField(
controller: textControllerOne,
toolbarOptions: const ToolbarOptions(
copy: true,
paste: true,
cut: true,
selectAll: true
),
decoration:  const InputDecoration(
labelText: "ToolbarOptions",
border:OutlineInputBorder() ,
),
)
),

                SizedBox(height: 20,),
                TextField(
                  controller: textControllerTwo,
                  textInputAction: TextInputAction.search,
                  decoration:  const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                         width: 2,
                        color: Colors.teal
                      )
                    ),
                      border:OutlineInputBorder() ,
                   icon: Icon(Icons.person),
                    hintText: "Write your  name",
                    labelText: "With Icons & filled Colour",
                    labelStyle: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIcon: Icon(Icons.close),
                    fillColor: Colors.black12,
                    filled: true
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  enabled: false,
                  decoration:  const InputDecoration(
                    labelText: "Disabled",
                    border:OutlineInputBorder() ,
                  ),
                ),
                SizedBox(height: 20,),

                Form(
                  key: formKey,
                  child: TextFormField(
                    controller: textControllerThree,
                    decoration:  const InputDecoration(
                       labelText: "TextFormField",
                        border:OutlineInputBorder() ,
                    ),
                    validator: (value){
                       if(value!.isEmpty){
                         return 'Cannot be empty';
                       }else{
                         return null;
                       }
                    },
                  ),
                ),
                SizedBox(height: 50,),
                ElevatedButton(onPressed: (){
                  final isValid = formKey
                      .currentState!
                      .validate();
                  if (!isValid) return;
                }
                    , child: Text("Click Here"))
              ],
            ),
          ),
        ),
      ),
    );
}
}





:::

:::section{.summary}

Conclusion
If you want to validate, then use TextFormField and use the validator property of it.
We make a common class for flutter textfields, as they are used in almost all screens. This reduces redundancy, makes code clean and readable.
By default, flutter textfields do not contain borders; you need to pass the border property inside decoration property.
You can expand the flutter textfield by passing minLines and maxLines properties.
You can retrieve the current value of input by calling the onChanged() fun callback and by TextEditingController() also.
To get the type of keyboard, use keyboardType and for action button of keyboard use textInputAction.
All other properties are discussed in the article that are commonly used and serve the purpose.
:::

:::section{.main}

MCQs

MCQ 1 : If you want to limit the number of maximum characters cab be entered by a user, which flutter textfield property will you use?

maxCharacters
maxLength
maxInputLength
maxCharacterLength
Correct Ans: Option 2
MCQ 2 : If you want to hide some text like password, which property will you use ?

Use the secureInput property
Assign a value to the hiddenText property
Set the obscureText property to true
Enable the passwordMode property
Correct Ans: Option 3
MCQ 3 What is the purpose of the keyboardType property in a flutter text field?

It specifies the size of the keyboard to display
It determines the type of input expected from the user
It controls the appearance of the keyboard
It sets the maximum number of characters allowed in the input
Correct Ans: Option 1
:::

Select a repo