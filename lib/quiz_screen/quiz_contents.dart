class QuizContents {
  List questions = [
    {
      'question': 'Which Set class should be most popular in a multi-threading environment, considering performance constraint?',
      'answer': ['HashSet', 'ConcurrentSkipListSet', 'LinkedHashSet', 'CopyOnWriteArraySet'],
      'correct': 1
    },
    {
      'question': 'Which of those doesn’t have an index based structure?',
      'answer': ['All', 'List', 'Set', 'Map'],
      'correct': 2
    },
    {
      'question': 'java.util.Collections is a:',
      'answer': ['Class', 'Interface', 'Object', 'None of the above'],
      'correct': 0
    },
    {
      'question': 'Methods such as reverse, shuffle are offered in:',
      'answer': ['Object', 'Collection', 'Collections', 'Apache Commons Collections'],
      'correct': 2
    },
    {
      'question': 'Which of those allows duplicate elements?',
      'answer': ['Set', 'List', 'All', 'None of the above'],
      'correct': 1
    },
    {
      'question': 'Which allows the storage of a null key and null values?',
      'answer': ['Hashtable', 'HashMap', 'All', 'None of the above'],
      'correct': 1
    },
    {
      'question':
          'What will be the output of the following code \n import java.util.HashMap;\n import java.util.Map; \n public class HashMapTest {\n public static void main(String args[])\n{\nMap<Integer,String> hashMap=new HashMap<Integer,String>();\nhashMap.put(11,”animesh”);\nhashMap.put(2,”ayushi”);\nhashMap.put(7,”renuka”);\nhashMap.put(9,”shivashish”);\nhashMap.put(null,”null”);\nSystem.out.println(hashMap.size());\nSystem.out.println(hashMap);\n}\n}\n',
      'answer': ['1', '5 {null=null, 2=d, 7=c, 9=w, 11=a}', 'Runtime exception', 'Compile time exception'],
      'correct': 1
    },
    {
      'question':
          'What will be the output of the following code\nimport java.util.Iterator;\nimport java.util.Vector;\npublic class VectorTest {\npublic static void main(String args[])\n{\nVector<String> vector= new Vector<String>();\nvector.add(“1”);\nvector.add(“2”);\nIterator<String> iterator=vector.iterator();\nwhile(iterator.hasNext())\n{\nSystem.out.println(iterator.next());\n}\n}\n}\n',
      'answer': ['1 2', '1 2 3', '3 2 1', 'ConcurrentModificationException'],
      'correct': 0
    },
    {
      'question':
          'What will be the correct answer for succesfull run\nimport java.util.ArrayList;\nimport java.util.List;\npublic class MyClass {\npublic static void main(String args[])\n{\n//Insert Here\nList<String> list=new ArrayList<String>();\nlist.add(“a”);\nlist.add(“b”);\nl.add(list);\n}\n}\n',
      'answer': ['List l=new ArrayList>();', 'List> l=new ArrayList>();', 'List> l=new ArrayList();', 'List l=new ArrayList();'],
      'correct': 3
    },
    {
      'question':
          'What will be the output of the following code\nimport java.util.ArrayList;\nimport java.util.List;\npublic class ArrayListTest {\npublic static void main(String args[])\n{\nList<String> arrayList=new ArrayList<String>();\narrayList.add(“a”);\narrayList.add(“b”);\narrayList.add(“c”);\nSystem.out.println();\narrayList.add(1,”d”);\nSystem.out.println(arrayList);\n}\n}\n',
      'answer': ['[a, d, b, c]', '[a, b, c, d]', '[d, a, d, c]', 'None of the above'],
      'correct': 0
    },
    {
      'question':
          'What will be the output of the following code\nimport java.util.List;\npublic class ArrayListTest {\npublic static void main(String args[])\n{\nList<String> arrayList=new ArrayList<String>();\narrayList.add(“a”);\narrayList.add(“a”);\narrayList.clear();\narrayList.add(“b”);\narrayList.add(“b”);\nSystem.out.println(arrayList.size());\n}\n}\n',
      'answer': ['1', '2', '3', '4'],
      'correct': 1
    },
    {
      'question':
          'What will be the output of the following code\nimport java.util.Map;\nimport java.util.TreeMap;\npublic class TreeMapTest {\npublic static void main (String args[])\n{\nMap<Integer,String> m= new TreeMap<Integer,String>();\nm.put(11, “audi”);\nm.put(null, null);\nm.put(11,”bmw”);\nm.put(null,”fer”);\nSystem.out.println(m.size());\nSystem.out.println(m);\n}\n}\n',
      'answer': ['Runtime exception', 'Compile time exception', '3', '3.0'],
      'correct': 0
    },
    {
      'question':
          'What will be the output of the following code\nclass PrintValue\n{\n<t> void display(t obj[])\n{\nfor(t i:obj)\n{\nSystem.out.println(i+” “);\n}\n}\n}\npublic class MyClass {\npublic static void main(String…args)\n{\nAbc obj1=new Abc();\nInteger i[]= {1,2};\nobj1.display(i);\nDouble d[]= {1.1,2.2};\nobj1.display(d);\n}\n}\n',
      'answer': ['1 2 1.1 2.2', 'Runtime exception', 'Compile time exception', 'None of the above'],
      'correct': 0
    },
    {
      'question':
          'What will be the output of the following code\nimport java.util.ArrayList;\nimport java.util.List;\npublic class MyClass {\npublic static void main (String args[])\n{\nList<Integer> list=new ArrayList<Integer>();\nlist.add(2);\nlist.add(3);\nSystem.out.println(sum(list));\n}\npublic static double sum(List<? extends Number> list)\n{\ndouble sum=0;\nfor(Number num:list)\n{\nsum+=num.doubleValue();\n}\nreturn sum;\n}\n}\n',
      'answer': ['5.0', '5', 'Runtime exception', 'Compile time exception'],
      'correct': 0
    },
    {
      'question':
          'What will be the output of the following code\nimport java.util.Comparator;\npublic class SortSet {\npublic static void main(String…a)\n{\nSet<Integer> treeSet=new TreeSet(new Comparator<Integer>()\n{\npublic int compareTo(Integer o1,Integer o2)\n{\nreturn o2.compareTo(o1);\n}\n});\ntreeSet.add(3);\ntreeSet.add(1);\ntreeSet.add(2);\nSystem.out.println(treeSet);\n}\n}\n',
      'answer': ['[3, 2, 1]', 'Compile time exception', 'Runtime exception', '[1, 2, 3]'],
      'correct': 1
    },
    {
      'question':
          'What will be the output of the following code\nimport java.util.Collection;\nimport java.util.HashSet;\nimport java.util.Set;\nimport java.util.TreeSet;\npublic class SortSet {\npublic static void main(String…a)\n{\nCollection<Integer> collection = new HashSet<Integer>();\ncollection.add(3);\ncollection.add(1);\ncollection.add(2); {\nSet<Integer> treeSet=new TreeSet<Integer>(collection);\nSystem.out.println(treeSet);\n}\n}\n}\n',
      'answer': ['[1, 2, 3]', 'Runtime exception', '[3, 2, 1]', 'None of the above'],
      'correct': 0
    },
    {
      'question': 'Which interface should be implemented for sorting on basis of many criteria’s?',
      'answer': ['Comparator', 'Comparable', 'Serializable', 'None of the above'],
      'correct': 0
    },
    {
      'question':
          'What will be the output of the following code\nimport java.util.Comparator;\nimport java.util.Map;\nimport java.util.TreeMap;\npublic class SortMap {\npublic static void main(String…a)\n{\nMap<Integer,Integer> treeMap = new TreeMap<Integer,Integer>(new Comparator<Integer>()\n{\npublic int compare(Integer o1,Integer o2)\n{\nreturn o2.compareTo(o1);\n}\n});\ntreeMap.put(4,1);\ntreeMap.put(2,1);\ntreeMap.put(3,1);{\nSystem.out.println(treeMap);\n}\n}\n}\n',
      'answer': ['{4=1, 3=1, 2=1}', '{2=1, 3=1, 4=1}', '{4=1, 2=1, 3=1}', 'Compile time exception'],
      'correct': 0
    },
    {
      'question':
          'What will be the output of the following code\nimport java.util.List;\nimport java.util.ArrayList;\npublic class MyClass {\npublic static void main(String…a)\n{\nList<Integer> l = new ArrayList<Integer>();\nl.add(2);\nm(1);\n}\nstatic void m(List<? super Double> l)\n{\nSystem.out.println(l.get(0));\nSystem.out.println(l.get(1));\n}\n}\n',
      'answer': ['Runtime Exception - NullPointer', 'Runtime Exception - IndexOutOfBound', 'Compile time error', '23'],
      'correct': 2
    },
    {
      'question': 'What guarantees type-safety in a collection?',
      'answer': ['Generics', 'Abstract classes', 'Interfaces', 'Collection'],
      'correct': 0
    },
    {
      'question': 'HashSet internally uses?',
      'answer': ['Set', 'HashMap', 'List', 'Collection'],
      'correct': 0
    },
    {
      'question': 'The most used interfaces from the collection framework are?',
      'answer': ['List', 'Map', 'Set', 'Collection'],
      'correct': 1
    },
    {
      'question': 'The root interface of Java collection framework hierarchy is -',
      'answer': ['Collection', 'Root', 'Collections', 'List/Set'],
      'correct': 3
    },
    {
      'question': 'Which of those is synchronized?',
      'answer': ['ArrayList', 'LinkedList', 'Vector', 'None of the above'],
      'correct': 2
    },
    {
      'question': 'ArrayList implements that of the following?',
      'answer': ['List', 'RandomAccess', 'Cloneable', 'All of these'],
      'correct': 3
    },
    {
      'question': 'Which of those permits the storage of the many null values?',
      'answer': ['Set', 'List', 'None of these', 'All of these'],
      'correct': 3
    },
    {
      'question': 'nextIndex() and previousIndex() are methods of which interface?',
      'answer': ['IndexIterator', 'Iterator', 'ListIterator', 'NextPreviousIterator'],
      'correct': 1
    },
    {
      'question': 'Vector extends that of these?',
      'answer': ['ArrayList', 'LinkedList', 'AbstractList', 'None'],
      'correct': 2
    },
    {
      'question': 'LinkedList implements?',
      'answer': ['Deque', 'List', 'None of the above', 'Both of above'],
      'correct': 3
    },
    {
      'question': 'In Iterator, nextElement() method of Enumeration has been changed to:',
      'answer': ['next()', 'genNext()', 'returnNext()', 'name remains same'],
      'correct': 3
    },
    {
      'question': 'Enumeration returned by Vector is?',
      'answer': ['fail-fast', 'fail-safe', 'none', 'all'],
      'correct': 0
    },
    {
      'question': 'From Java five onwards, that one among these is suggested to replace Hashtable?',
      'answer': ['ConcurrentHashMap', 'HashMap', 'ConcurrentHashtable', 'None'],
      'correct': 1
    },
    {
      'question': 'Which doesn’t permit to store a null value?',
      'answer': ['TreeSet', 'LinkedHashSet', 'HashSet', 'None'],
      'correct': 0
    },
    {
      'question': 'What describes an algorithm performs in best, average or worse case scenarios?',
      'answer': ['Big-B', 'Big-O', 'Big-Data', 'Big-N'],
      'correct': 1
    },
    {
      'question': 'State the search time complexity of an ordered array.',
      'answer': ['O(n)', 'O(1)', 'O(log n)', 'O(n-1)'],
      'correct': 0
    },
    {
      'question': 'Name the map that should be kept in a multi-threading environment to keep up the natural order of keys?',
      'answer': ['ConcurrentHashMap', 'ConcurrentSkipListMap', 'ConcurrentMap', 'All'],
      'correct': 0
    },
    {
      'question': 'TreeMap implements?',
      'answer': ['Dictionary', 'HashMap', 'AbstractMap', 'Navigable Map'],
      'correct': 3
    },
    {
      'question': 'Which list class should be most popular in a multi-threading environment, considering performance constraint?',
      'answer': ['Vector', 'CopyOnWriteArrayList', 'ArrayList', 'ConcurrentArrayList'],
      'correct': 1
    },
    {
      'question': 'Which Set class should be most popular in a multi-threading environment, considering performance constraint?',
      'answer': ['HashSet', 'ConcurrentSkipListSet', 'LinkedHashSet', 'CopyOnWriteArraySet'],
      'correct': 1
    },
    {
      'question': 'Which Map class should be most popular in a multi-threading environment, considering performance constraint?',
      'answer': ['Hashtable', 'CopyOnWriteMap', 'ConcurrentHashMap', 'ConcurrentMap'],
      'correct': 1
    },
    {
      'question': 'Which allows the removal of elements from a collection?',
      'answer': ['Enumeration', 'Iterator', 'Both', 'None of the above'],
      'correct': 3
    },
    {
      'question':
          'What will be the output of given code\nimport java. util.Arrays;\nimport java. util.Comparator;\nclass Sorting implements Comparator\n{\npublic int compare(Integer o1, Integer o2)\n{\nreturn o2. compareTo(o1);\n}\n}\npublic class abc {\npublic static void main (String…a)\n{\nInteger intArray[]= {2,3,1};\nArrays.sort(intArray, new Sorting());\nfor(int i: intArray)\n{\nSystem. out. print(i+””);\n}\n}\n}\n',
      'answer': ['Compile time exception', '3 2 1', '1 2 3', '2 3 1'],
      'correct': 1
    },
    {
      'question':
          'What will be the output of given code\nimport java.util.Iterator;\nimport java.util.Set;\nimport java.util.TreeSet;\npublic class ConcurrentSkipListMapTest {\npublic static void main (String args)\n{\nSet set = new TreeSet();\nset.add(1);\nset.add(“2”);\nset.add(3);\nIterator iterator = set.iterator();\nwhile (iterator. hasNext())\n{\nSystem. out. print(iterator. next()+””);\n}\n}\n}\n',
      'answer': ['1 2 3', '1 followed by exception', 'Compile time exception', '3 2 1'],
      'correct': 3
    },
    {
      'question':
          'What will be the output of given code\nimport java.util.ArrayList;\nimport java.util. Iterator;\nimport java.util. List;\npublic class ArrayListTest {\npublic static void main (String args[])\n{\nList<String> arrayList = new ArrayList<String>();\narrayList.add(“a”);\narrayList.add(“b”);\nIterator<String> iterator = arrayList.iterator();\nwhile (iterator.hasNext())\n{\nSystem.out.println(iterator.next());\narrayList.add(“c”);\n}\n}\n}\n',
      'answer': ['a followed by ConcurrentModificationException', 'a b c', 'a b', 'a c'],
      'correct': 0
    },
    {
      'question':
          'What will be the output of given code\nimport java.util.HashSet;\nimport java.util.Set;\npublic class HashSetTest\n{\npublic static void main (String args[])\n{\nSet hashSet = new HashSet();\nhashSet.add(“1”);\nhashSet.add(1);\nhashSet.add(null);\nhashSet.add(“null”);\nSystem.out.println(hashSet);\n}\n}\n',
      'answer': ['[null, 1]', '[1]', '[null, 1, 1, null]', 'Runtime exception'],
      'correct': 2
    },
    {
      'question':
          'What will be the output of given code\nimport java.util.IdentityHashMap;\nimport java.util.Map;\npublic class MyClass\n{\npublic static void main(String args[])\n{\nMap<String,String> identityHashMap = new IdentityHashMap<String,String>();\nidentityHashMap.put(new String(“a”),”audi”);\nidentityHashMap.put(new String(“a”),”ferrari”);\nSystem.out.println(identityHashMap);\n}\n}\n',
      'answer': ['{a=ferrari}', '{a=ferrari, a=audi}', 'Runtime Exception', '{a=audi}'],
      'correct': 1
    },
    {
      'question':
          'What will be the output of given code\nimport java.util.HashMap;\nimport java.util.Map;\npublic class MyClass\n{\npublic static void main(String args[])\n{\nMap<String,String> hashMap = new HashMap<String,String>();\nhashMap.put(new String(“a”),”audi”);\nhashMap.put(new String(“a”),”ferrari”);\nSystem.out.println(hashMap);\n}\n}\n',
      'answer': ['Runtime exception', '[1]', '[null, 1]', '{a=ferrari}'],
      'correct': 3
    },
    {
      'question': 'Which permits the removal of elements from a collection?',
      'answer': ['Enumeration', 'Iterator', 'None of the above', 'Both'],
      'correct': 1
    },
    {
      'question': 'The Comparator interface contains the method?',
      'answer': ['compareWith', 'compareTo()', 'compare()', 'toCompare'],
      'correct': 2
    },
    {
      'question': 'Which of those is synchronized?',
      'answer': ['TreeMap', 'HashMap', 'Hashtable', 'Map'],
      'correct': 2
    },
    {
      'question': 'Which offers the best performance?',
      'answer': ['TreeMap', 'HashMap', 'LinkedHashMap', 'All same'],
      'correct': 1
    },
    {
      'question': 'Which of these is the most popularly used class as a key in a HashMap?',
      'answer': ['String', 'Integer', 'Double', 'All of the above'],
      'correct': 1
    },
    {
      'question': 'What should we use when add and remove operations are more frequent than get operations',
      'answer': ['LinkedList', 'ArrayList', 'Vector', 'HashMap'],
      'correct': 0
    },
    {
      'question': 'Iterator returned by ArrayList is?',
      'answer': ['Fail-fast', 'Fail-safe', 'None', 'Both'],
      'correct': 0
    },
    {
      'question': 'Iterator returned by LinkedList is?',
      'answer': ['Fail-fast', 'Fail-safe', 'None', 'Both'],
      'correct': 0
    },
    {
      'question': 'Iterator returned by CopyOnWriteArrayList is?',
      'answer': ['Fail-fast', 'Fail-safe', 'None', 'Both'],
      'correct': 1
    },
    {
      'question': 'Iterator returned by HashMap on key, value and entry are?',
      'answer': ['Fail-fast', 'Fail-safe', 'None', 'Both'],
      'correct': 0
    },
    {
      'question': 'Iterator returned by Hashtable on key, value and entry are?',
      'answer': ['Fail-fast', 'Fail-safe', 'None', 'Both'],
      'correct': 0
    },
    {
      'question': 'Iterator returned by ConcurrentHashMap on key, value and entry is?',
      'answer': ['Fail-fast', 'Fail-safe', 'None', 'Both'],
      'correct': 1
    },
    {
      'question': 'Iterator returned by LinkedHashMap on key, value and entry is?',
      'answer': ['Fail-fast', 'Fail-safe', 'None', 'Both'],
      'correct': 0
    },
    {
      'question': 'Iterator returned by TreeMap on key, value and entry is?',
      'answer': ['Fail-fast', 'Fail-safe', 'None', 'Both'],
      'correct': 0
    },
    {
      'question': 'Iterator returned by ConcurrentSkipListMap on key, value and entry is?',
      'answer': ['Fail-fast', 'Fail-safe', 'None', 'Both'],
      'correct': 1
    },
    {
      'question': 'Which Set implementation is sorted and synchronized?',
      'answer': ['LinkedHashSet', 'ConcurrentSkipListSet', 'TreeSet', 'CopyOnWriteArraySet'],
      'correct': 1
    },
    {
      'question': 'TreeMap -',
      'answer': ['Does not enable null key', 'Allow several null values', 'Both', 'None'],
      'correct': 1
    },
    {
      'question':
          'What will be the output of the following code -\nimport java.util.Collections;\nimport java.util.HashMap;\nimport java.util.Map;\npublic class MyClass\n{\npublic static void main(String args[])\n{\nMap<Integer,String> hashMap = new HashMap<Integer,String>();\nhashMap.put(11,”a”);\nCollections.unmodifiableMap(hashMap);\nhashMap.put(12,”b”);\nSystem.out.println(hashMap);\n}\n}\n',
      'answer': ['{11=a}', '{11=a, 12=b}', 'UnsupportedOperationException', 'Compile time exception'],
      'correct': 1
    },
    {
      'question':
          'What will be the output of the following code -\nimport java. util.Hashtable;\nimport java. util.Map;\npublic class hashTableBlog {\npublic static void main (String args[])\n{\nMap<Integer,String> hashtable = new Hashtable<Integer,String>();\nhashtable.put(11,”a”);\nhashtable.put(null,”c”);\nhashtable.put(null,null);\nSystem.out.println(hashtable.size());\nSystem.out.println(hashtable);\n}\n}\n',
      'answer': ['Runtime Exception', 'Compile time exception', '2 {11=bmw, null=fer}', '2 {11=null, null=fer}'],
      'correct': 0
    },
    {
      'question':
          'What will be the output of the following code -\nimport java. util.HashMap;\nclass newEmployee\n{\nprivate String name;\npublic newEmployee (String name)\n{\nthis.name = name;\n}\n@Override\npublic int hashCode()\n{\nreturn 1;\n}\n}\nclass EmployeeClass\n{\npublic static void main(String args[])\n{\nHashMap hm=new HashMap();\nhm.put(new newEmployee(“a”),”emp1″);\nhm.put(new newEmployee(“b”),”emp2″);\nhm.put(new newEmployee(“a”),”emp1 overridden”);\nSystem.out.println(hm.size());\nSystem.out.println(hm.get(new newEmployee(“a”)));\n}\n}\n',
      'answer': ['1 null', '2 emp1 OVERRIDDEN', '3 null', '1 emp1 OVERRIDDEN'],
      'correct': 2
    },
    {
      'question':
          'What will be the output of the following code -\nimport java. util.HashMap;\nclass newEmployee\n{\nprivate String name;\npublic newEmployee (String name)\n{\nthis.name = name;\n}\n@Override\npublic int hashCode()\n{\nreturn 1;\n}\n}\nclass EmployeeClass\n{\npublic static void main(String args[])\n{\nHashMap<newEmployee,String> hm=new HashMap<newEmployee,String>();\nhm.put(new newEmployee(“a”),”emp1″);\nhm.put(new newEmployee(“b”),”emp2″);\nhm.put(new newEmployee(“a”),”emp1 overridden”);\nSystem.out.println(hm.size());\nSystem.out.println(hm.get(new newEmployee(“a”)));\n}\n}\n',
      'answer': ['1 emp1 OVERRIDDENQ', '2 emp1 OVERRIDDEN', '1 null', '3 null'],
      'correct': 0
    },
    {
      'question':
          'What will be the output of the following code -\nimport java.util.Collections;\nimport java.util.HashMap;\nimport java.util.Map;\nimport java.util.PriorityQueue;\npublic class MyClass\n{\npublic static void main(String args[])\n{\nPriorityQueue<Integer> q = new PriorityQueue<Integer>();\nq.add(1);\nq.add(2);\nq.add(3);\nSystem.out.println(q.poll());\nSystem.out.println(q.offer(4));\nq.add(1);\nq.remove(2);\nSystem.out.println(q.peek());\nSystem.out.println(q);\n}\n}\n',
      'answer': ['1 true 1 [1, 3, 4]', '3 true 1 [1, 3, 4]', '3 false 1 [1, 3, 4]', '1 false 1 [1, 2, 4]'],
      'correct': 0
    },
    {
      'question': 'Which Map is synchronized?',
      'answer': ['Hashtable', 'ConcurrentSkipListMap', 'ConcurrentHashMap', ' All of the above'],
      'correct': 3
    },
    {
      'question': 'concurrentSkipListMap permits',
      'answer': ['One null key', 'Many null values', 'None', 'All'],
      'correct': 2
    },
    {
      'question': 'Which of these helps insert elements at a specific position in a collection?',
      'answer': ['ArrayList', 'LinkedList', 'Any', 'Hashtable'],
      'correct': 1
    },
    {
      'question': 'Complexity of ArrayList get method',
      'answer': ['O(n-1)', 'O(n)', 'O(1)', 'O(2n)'],
      'correct': 2
    },
    {
      'question': 'Which of these is sorted by default',
      'answer': ['LinkedHashSet', 'TreeSet', 'HashSet', 'None'],
      'correct': 1
    },
    {
      'question': 'Which of these maintains insertion order?',
      'answer': ['List', 'Set', 'Map', 'Table'],
      'correct': 0
    },
    {
      'question': 'Which maintains insertion order?',
      'answer': ['TreeSet', 'HashSet', 'LinkedHashSet', 'Table'],
      'correct': 2
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
    {
      'question': '',
      'answer': ['', '', '', ''],
      'correct': 0
    },
  ];
}
