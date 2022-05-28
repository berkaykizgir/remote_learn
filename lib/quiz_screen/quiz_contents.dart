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
      'question':
          'In ConcurrentHashMap - once thread locks one segment for updation it doesn’t allow the other thread to perform updations in the same segment till lock isn’t released on the segment',
      'answer': ['True', 'False', '', ''],
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
