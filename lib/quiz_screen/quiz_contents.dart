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
      'question': 'In Iterator, hasMoreElements() method of Enumeration has been changed to:',
      'answer': ['hasNextElement()', 'isNext()', 'hasNext()', 'name remains same'],
      'correct': 2
    },
    {
      'question': 'TreeSet internally uses that one to store elements?',
      'answer': ['HashMap', 'LinkedHashMap', 'TreeMap', 'Map'],
      'correct': 2
    },
    {
      'question': 'HashSet internally uses?',
      'answer': ['HashMap', 'LinkedHashMap', 'TreeMap', 'Map'],
      'correct': 0
    },
    {
      'question': 'An attempt to add the null key to a TreeSet will result in:',
      'answer': ['Will compile', 'Compile time Exception', 'Error', 'Runtime - NullPointerException'],
      'correct': 3
    },
    {
      'question': 'TreeSet maintains which order?',
      'answer': ['Ascending Order', 'Descending Order', 'None', 'Both'],
      'correct': 0
    },
    {
      'question': 'Enumeration returned by ArrayList is',
      'answer': ['Fail-fast', 'Fail-safe', 'None', 'Both'],
      'correct': 0
    },
    {
      'question': 'LinkedHashMap permits',
      'answer': ['One null key', 'Many null values', 'Both', 'None'],
      'correct': 2
    },
    {
      'question': 'Hashtable permits',
      'answer': ['One null key', 'Many null values', 'None', 'Both'],
      'correct': 2
    },
    {
      'question': 'How are you able to sort given HashMap on basis of values',
      'answer': [
        'Implement Comparator interface and override its compare method',
        'It is not possible',
        'Implement Comparator interface and override its compareTo method',
        'Implement Comparator and Comparable interface'
      ],
      'correct': 0
    },
    {
      'question': 'The Comparator interface contains the method?',
      'answer': ['compareWith()', 'compareTo()', 'compare()', 'toWith()'],
      'correct': 2
    },
    {
      'question': 'What will Collections.sort internally uses when number of elements are less than 7?',
      'answer': ['Insertion sort', 'Merge sort', 'Quick sort', 'Bubble sort'],
      'correct': 0
    },
    {
      'question': 'An attempt to add null key to a TreeMap will result in:',
      'answer': ['Compile time Exception', 'Error', 'Runtime - NullPointerException', 'None'],
      'correct': 2
    },
    {
      'question':
          'What will be the output of the following code -\nimport java.util.Map;\nimport java.util.TreeMap;\npublic class TreeMapTest {\npublic static void main (String args[])\n{\nMap<Integer,String> m= new TreeMap<Integer,String>();\nm.put(11, “audi”);\nm.put(null, null);\nm.put(11,”bmw”);\nm.put(null,”fer”);\nSystem.out.println(m.size());\nSystem.out.println(m);\n}\n}\n',
      'answer': ['Compile time exception', '1', '2', 'Runtime Exception'],
      'correct': 3
    },
    {
      'question': 'Which of those is synchronized and does not allow null elements?',
      'answer': ['Vector', 'CopyOnWriteArraySet', 'CopyOnWriteArrayList', 'ConcurrentSkipListSet'],
      'correct': 3
    },
    {
      'question': 'Which of these is synchronised and isn’t sorted by natural order?',
      'answer': ['EnumSet', 'LinkedList', 'ConcurrentSkipListSet', 'Vector'],
      'correct': 3
    },
    {
      'question':
          'What will be the output of the following code -\nimport java.util.Iterator;\nimport java.util.Map;\nimport java.util.concurrent.ConcurrentSkipListMap;\npublic class ConcurrentSkipMapTest {\npublic static void main (String args[])\n{\nMap<Integer,String>concurrentSkipListMap= new ConcurrentSkipListMap<Integer,String>();\nconcurrentSkipListMap.put(11,”audi”);\nIterator<Integer> keyIterator = concurrentSkipListMap.keySet().iterator();\nwhile (keyIterator.hasNext())\n{\nSystem.out.print(keyIterator.next());\nconcurrentSkipListMap.put(13,”bmw”);\n}\n}\n}\n',
      'answer': ['11 followed by ConcurrentModificationException', '11', 'ConcurrentModificationException', 'Compile time exception'],
      'correct': 1
    },
    {
      'question':
          'What will be the output of the following code -\nimport java.util.EnumMap;\nimport java.util.Map;\npublic class EnumMapExample {\npublic enum Days\n{\nMonday;\n}public static void main (String args[])\n{\nMap<Days,String> daysEnumMap = new daysEnumMap<Days,String>(Days.class);\ndaysEnumMap.put(Days.Monday,”Day1″);\ndaysEnumMap.put(Days.Tuesday,”Day2″);\nSystem.out.println(“daysEnumMap.get(Days.Monday):”+ daysEnumMap.get(Days.Monday));\nSystem.out.println(“daysEnumMap.containsKey(Days.Monday):”+\ndaysEnumMap.containsKey(Days.Tuesday)) ;\n}\n}\n',
      'answer': [
        'daysEnumMap.get(Days.Monday) : Day1 daysEnumMap.containsKey(Days.Monday) : true',
        'daysEnumMap.get(Days.Monday) : Day1 daysEnumMap.containsKey(Days.Monday) : false',
        'Runtime Exception',
        'Compile time exception'
      ],
      'correct': 3
    },
    {
      'question':
          'What will be the output of the following code -\nimport java.util.List;\nimport java.util.concurrent.CopyOnWriteArrayList;\npublic class CopyOnWriteArrayListTest\n{\npublic static void main (String args[])\n{\nList<String> copyOnWriteArrayList = new CopyOnWriteArrayList<String>();\ncopyOnWriteArrayList.add(” Ind “);\ncopyOnWriteArrayList.add(” usa “);\ncopyOnWriteArrayList.add(null);\nfor(String string : copyOnWriteArrayList)\n{\nSystem.out.print(string+””);\ncopyOnWriteArrayList.add(“newEle3”) ;\n}\n}\n}\n',
      'answer': ['ind followed by NullPointerException', 'ind followed by ConcurrentModificationException', 'ind usa null', 'Compile time exception'],
      'correct': 2
    },
    {
      'question': 'In ListIterator, when a call to next() or previous(), if a call is made to set(E element) followed by add() or remove() what happens?',
      'answer': ['Compilation error', 'UnsupportedOperationException', 'ConcurrentModificationException', 'Syntax Error'],
      'correct': 1
    },
    {
      'question': 'Which interface should be implemented for sorting on basis of many criteria’s?',
      'answer': ['Comparator', 'Comparable', 'Serializable', 'None'],
      'correct': 0
    },
    {
      'question': 'Can two threads on same ConcurrentHashMap object access it concurrently',
      'answer': [
        'We need to add additional functionality to achieve the same.',
        'Its not possible',
        'Different threads will access different|completely different} segments concurrently',
        'All'
      ],
      'correct': 2
    },
    {
      'question': 'LinkedHashSet implements:',
      'answer': ['Set', 'Cloneable', 'Serializable', 'All'],
      'correct': 3
    },
    {
      'question':
          'What will be the output of the following code -\nimport java.util.Iterator;\nimport java.util.Set;\nimport java.util.concurrent.CopyOnWriteArraySet;\npublic class CopyOnWriteArraySetTest\n{\npublic static void main (String args[])\n{\nSet<String> copyOnWriteArraySet = new CopyOnWriteArraySet<String>();\ncopyOnWriteArraySet.add(” a “);\ncopyOnWriteArraySet.add ( ” b” );\nIterator<String> iterator = copyOnWriteArraySet.iterator();\nwhile(iterator.hasNext())\n{\ncopyOnWriteArraySet.add( ” c ” );\nSystem.out.println(iterator.next());\n}\n}\n}\n',
      'answer': ['a followed by exception', 'a', 'a b', 'Compile time exception'],
      'correct': 2
    },
    {
      'question': 'In WeakHashMap',
      'answer': [
        'An entry are automatically removed by garbage collector',
        'Behaves normally like HashMap',
        'An entry are never removed by garbage collector',
        'All'
      ],
      'correct': 0
    },
    {
      'question': 'A EnumSet',
      'answer': [
        'Can use enum and non enum type keys',
        'Cannot use enum type keys',
        'Is specialised Set implementation for use with enum type keys only',
        'All'
      ],
      'correct': 2
    },
    {
      'question': 'Iterator returned by HashSet is',
      'answer': ['Fail-fast', 'Fail-safe', 'None', 'Both'],
      'correct': 0
    },
    {
      'question': 'Iterator returned by CopyOnWriteArraySet is',
      'answer': ['Fail-fast', 'Fail-safe', 'None', 'Both'],
      'correct': 1
    },
    {
      'question': 'Iterator returned by TreeSet is',
      'answer': ['Fail-fast', 'Fail-safe', 'None', 'Both'],
      'correct': 0
    },
    {
      'question': 'Iterator returned by LinkedHashSet is',
      'answer': ['Fail-fast', 'Fail-safe', 'None', 'Both'],
      'correct': 0
    },
    {
      'question': 'Iterator returned by ConcurrentSkipListSet is',
      'answer': ['Fail-fast', 'Fail-safe', 'None', 'Both'],
      'correct': 1
    },
    {
      'question': 'Which List is synchronized?',
      'answer': ['Vector', 'CopyOnWriteArrayList', 'Both', 'None'],
      'correct': 2
    },
    {
      'question': 'Which Set is synchronized?',
      'answer': ['CopyOnWriteArraySet', 'ConcurrentSkipListSet', 'Both', 'None'],
      'correct': 2
    },
    {
      'question':
          'What will be the output of the following code -\nimport java.util.List;\nimport java.util.ListIterator;\nimport java.util.ArrayList;\npublic class ArrayListTest\n{\npublic static void main (String args[])\n{\nList<String> arrayList = new ArrayList<String>();\narrayList.add(“a”);\narrayList.add(“b”);\nListIterator<String> listIterator = arrayList.listIterator();\nwhile (listIterator.hasNext())\n{\nSystem.out.println(listIterator.next());\nlistIterator.previous( );\n}\n}\n}\n',
      'answer': ['a b a', 'a b', 'Will print ‘a’ infinite times', 'a'],
      'correct': 2
    },
    {
      'question': 'What is the significance of using instanceOf operator and getClass() in equals method?',
      'answer': [
        'InstanceOf can return true for comparing current class with its subclass as well',
        'getClass() can return true only if exactly same class is compared',
        'getClass() can return false when compared with subclass',
        'All'
      ],
      'correct': 3
    },
    {
      'question':
          'What will be the output of the following code -\nimport java.util.Iterator;\nimport java.util.Map;\nimport java.util.concurrent.ConcurrentSkipListMap;\npublic class ConcurrentSkipMapTest {\npublic static void main (String args[])\n{\nMap<Integer,String> concurrentSkipListMap= new ConcurrentSkipListMap<Integer,String>();\nconcurrentSkipListMap.put(11,”audi”);\nconcurrentSkipListMap.put(44,”null”);\nIterator<Integer> keyIterator = concurrentSkipListMap.keySet().iterator();\nwhile (keyIterator.hasNext())\n{\nSystem.out.print(keyIterator.next());\n}\n}\n}\n',
      'answer': ['0 null', '1 null', '2 null', '11 44'],
      'correct': 2
    },
    {
      'question':
          'What will be the output of the following code -\nimport java.util.HashMap;\npublic class Employee {\nprivate String name;\nprivate String name;\n{\nthis.name = name;\n}\n}\nclass EmployeeClass\npublic static void main(String args[])\n{\nHashMap<Employee,String> hm=new HashMap<Employee,String>();\nhm.put(new Employee(“a”),”emp1″);\nhm.put(new Employee(“b”),”emp2″);\nhm.put(new Employee(“a”),”emp1 overridden”);\nSystem.out.println(hm.size());\nSystem.out.println(hm.get(new Employee(“a”)));\n}\n}\n',
      'answer': ['Compile time exception', 'a b c d e 1', 'a b c d e 2', '3 null'],
      'correct': 3
    },
    {
      'question': 'Which of those isn’t an interface within the Collections Framework?',
      'answer': ['Collection', 'Group', 'Set', 'List'],
      'correct': 1
    },
    {
      'question': 'Which interface restricts duplicate elements?',
      'answer': ['Set', 'List', 'Map', 'All'],
      'correct': 0
    },
    {
      'question': 'Which of those assortment categories has the flexibility to grow dynamically?',
      'answer': ['Array', 'Arrays', 'ArrayList', 'None'],
      'correct': 2
    },
    {
      'question': 'The efficiency and accuracy of a HashMap are often warranted with:',
      'answer': ['Override equals method', 'Override hashCode method', 'None', 'Both'],
      'correct': 3
    },
    {
      'question': 'A HashMap permits the existence of:',
      'answer': ['null values', 'one null key', 'None of these', 'Both of these'],
      'correct': 3
    },
    {
      'question': 'In an Iterator what implementation will traverse a collection in each direction?',
      'answer': ['Iterator', 'ListIterator', 'SetIterator', 'MapIterator'],
      'correct': 1
    },
    {
      'question': 'The Comparable interface contains which method:',
      'answer': ['toCompare', 'compare', 'compareTo()', 'compareWith'],
      'correct': 2
    },
    {
      'question': 'Which is quicker and uses less memory?',
      'answer': ['ListEnumeration', 'Iterator', 'Enumeration', 'ListIterator'],
      'correct': 2
    },
    {
      'question': 'What Iterator will throw a ConcurrentModificationException?',
      'answer': ['Fail-fast Iterators', 'Fail-safe Iterators', 'Both of these', 'None of these'],
      'correct': 0
    },
    {
      'question': 'State the number of default segments in Concurrent HashMap.',
      'answer': ['12', '32', '4', '16'],
      'correct': 1
    },
    {
      'question': 'Which is best suited to a multi-threaded environment?',
      'answer': ['WeakHashMap', 'Hashtable', 'HashMap', 'ConcurrentHashMap'],
      'correct': 3
    },
    {
      'question': 'The default capacity of a Vector is:',
      'answer': ['10', '12', '8', '16'],
      'correct': 0
    },
    {
      'question': 'Which doesn’t implement the collection interface?',
      'answer': ['List', 'Map', 'Set', 'None of these'],
      'correct': 1
    },
    {
      'question': 'The default capacity of an ArrayList is:',
      'answer': ['12', '16', '1', '10'],
      'correct': 3
    },
    {
      'question': 'Which of the following provides higher performance for the insertion and removal from the center of the list?',
      'answer': ['Vector', 'ArrayList', 'LinkedList', 'None'],
      'correct': 2
    },
    {
      'question': 'An unordered array has a time complexity of:',
      'answer': ['O(log n)', 'O(n)', 'O(n + 1)', 'O(1)'],
      'correct': 1
    },
    {
      'question': 'The add and take away methods of TreeSet have a time complexity of:',
      'answer': ['O(n)', 'O(n + 1)', 'O(1)', 'O(log n)'],
      'correct': 3
    },
    {
      'question': 'After resizing, size of ArrayList is increased by :',
      'answer': ['200%', '50%', '100%', 'None of these'],
      'correct': 1
    },
    {
      'question': 'After resizing, size of Vector is accumulated by:',
      'answer': ['200%', '100%', '50%', 'None of these'],
      'correct': 1
    },
    {
      'question': 'Deque and Queue are derived from:',
      'answer': ['AbstractList', 'Collection', 'AbstractCollection', 'List'],
      'correct': 1
    },
  ];
}
