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
  ];
}
