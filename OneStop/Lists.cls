// List - index/value pair

// define a new list
List<Integer> myList = new List<Integer>();
// add a value to the end
myList.add(42);

Integer i = myList.get(0);

// adds 1 at index 0
myList.set(0,1);

// removes all from list
myList.clear();


// create a 1D list in 3 ways:
String[] colors = new List<String>; // fixed size
List<String> colors = new String[1]; // expandable
String[] colors new String[1];  // fixed sizz

// Sorting Lists with List.sort
List<String> colors = new List<String>{
    'Yellow',
    'Red',
    'Green'
};
colors.sort();

List<SelectOption> options = new List<SelectOption>();
options.add(new SelectOption('A', 'United States'));
options.add(new SelectOption('C', 'Canada'));
options.add(new SelectOption('A', 'Mexico'));
System.debug('Before sorting: ' + options);
options.sort();
System.debug('After sorting: ' + options);
// ******************************************************

// Sets - unordered, contain up to 4 levels of nesting
// no index, you can only iterate over a set

new Set<String>()

// define a new set with two elements
Set<String> s1 = new Set<String>{'a', 'b + c'};
Set<String> s2 = new Set<String>(s1);

s2.add(3);
System.assert(s2.contains(1));

// Maps - key/value pair
// Similar to a Dictionary in C#
Map<String, String> country_currencies = new Map<String, String>();
Map<ID, Set<String>> m = new Map<ID, Set<String>>();

