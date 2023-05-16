-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SJIS';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: M_DataType; Type: TABLE DATA; Schema: public; Owner: user
--userinfo
INSERT INTO public."userinfo" (user_id,lastname, firstname, birthday, sex, city,create_datetime) VALUES ('1','data', 'test','19980304','1','Tokyo',now());
INSERT INTO public."userinfo" (user_id,lastname, firstname, birthday, sex, city,create_datetime) VALUES ('2','Bruce', 'Lee','19930625','2','Gothm',now());

--login
INSERT INTO public."login" (user_id,mail, password,create_datetime) 
VALUES ('1','datatest@el.com','199803041Tokyo',now());

INSERT INTO public."login" (user_id,mail, password,create_datetime) 
VALUES ('2','BruceLee@el.com','Goyhm199306252',now());


--exam
INSERT INTO public."exam"(test_id,test_category,test_name,description,create_datetime)
 VALUES('1','level_test','Java SE Bronze','「Java SE 11」は、2017年9月に発表された新しいリリース・モデルへの移行後初の LTS リリースであり、企業システムやクラウド・サービス、スマート・デバイスなどで活用されるアプリケーション開発の生産性向上に重点をおいています。この資格を取得することで、業界標準に準拠した高度なスキルを証明します。
Oracle Certified Java Programmer, Bronze SE 認定資格は、言語未経験者向けの入門資格で Java 言語を使用したオブジェクト指向プログラミングの基本的な知識を有すること を評価することを目的としています。Oracle Certified Java Programmer, Bronze SE 認定資格を取得するためには、Java SE Bronze (1Z0-818-JPN) 試験 の合格が必要です。',now());

INSERT INTO public."exam"(test_id,test_category,test_name,description,create_datetime)
VALUES('2','Java','第九章総仕上げ問題','Java SE Bronze 練習問題',now());

INSERT INTO public."exam"(test_id,test_category,test_name,description,create_datetime)
 VALUES('3','情報処理技術者試験','基本情報技術者試験','基本情報技術者試験の対象者は高度IT人材となるために必要な基本的知識・技能をもち、実践的な活用能力を身に付けた者です。',now());
 
INSERT INTO public."exam"(test_id,test_category,test_name,description,create_datetime)
VALUES('4','情報処理技術者試験','応用情報技術者試験','ITエンジニアとしてのレベルアップを図るには、応用情報技術者試験がお勧めです。技術から管理、経営まで、幅広い知識と応用力が身に付き、システム開発、IT基盤構築などの局面で、高いパフォーマンスを発揮することができます。',now());

INSERT INTO public."exam"(test_id,test_category,test_name,description,create_datetime)
VALUES('5','情報処理技術者試験','ITパスポート試験','職業人が共通に備えておくべき情報技術に関する基礎的な知識をもち、情報技術に携わる業務に就くか、担当業務に対して情報技術を活用していこうとする者。',now());

 INSERT INTO public."exam"(test_id,test_category,test_name,description,create_datetime)
VALUES('6','AWS資格証','AWS Certified DevOps Engineer - Professional','この資格は、組織がクラウドイニシアチブを実装するための重要なスキルを持つ人材を特定して育成するのに役立ちます。AWS Certified DevOps Engineer - Professional を取得すると、AWS インフラストラクチャとアプリケーションのテストとデプロイを自動化する能力が認定されます。',now());

 INSERT INTO public."exam"(test_id,test_category,test_name,description,create_datetime)
VALUES('7','AWS資格証','AWS Certified Solutions Architect ? Associate','この資格は、組織がクラウドイニシアチブを実装するための重要なスキルを持つ人材を特定して育成するのに役立ちます。AWS Certified Solutions Architect ? Associate を取得すると、AWS 上で分散システムを設計、実装する能力が認定されます。',now());

 INSERT INTO public."exam"(test_id,test_category,test_name,description,create_datetime)
VALUES('8','AWS資格証','AWS Certified Developer-Associate','この資格は、組織がクラウドイニシアチブを実装するための重要なスキルを持つ人材を特定して育成するのに役立ちます。AWS Certified Developer - Associate を取得すると、クラウドベースのアプリケーションで書き込みおよびデプロイを行う能力を認定します。',now());

INSERT INTO public."exam"(test_id,test_category,test_name,description,create_datetime)
 VALUES('9','AWS資格証','AWS Certified Cloud Practitioner','AWS Certified Cloud Practitioner は、AWS プラットフォームの基本的な知識をお持ちの方を対象としています。組織がクラウドイニシアチブを実装するための重要な知識を持つ人材を特定して育成するのに役立ちます。AWS Certified Cloud Practitioner を取得することで、クラウドへの理解と基礎的な AWS の知識が認定されます。',now());
 
 INSERT INTO public."exam"(test_id,test_category,test_name,description,create_datetime)
VALUES('10','AWS資格証','AWS Certified Solutions Architect - Professional','この資格は、組織がクラウドイニシアチブを実装するための重要なスキルを持つ人材を特定して育成するのに役立ちます。AWS Certified Solutions Architect - Professional を取得すると、多様で複雑な要件下において、AWS のアプリケーションを設計、デプロイ、評価する能力が認定されます。',now());


--question
INSERT INTO public."question"(test_id,question_id,text,code,right_select_count,create_datetime)
VALUES('1','1','Javaのクラスファイルに関する説明をして、正しいものを選びなさい。（一つ選択）','','1',now());

INSERT INTO public."question"(test_id,question_id,text,code,right_select_count,create_datetime)
VALUES('1','2','DUMMY2','ABCDEFG','2',now());

INSERT INTO public."question"(test_id,question_id,text,code,right_select_count,create_datetime)
VALUES('1','3','DUMMY question 3','XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX','3',now());








INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('1','2','次のようなAクラスとBクラスが定義されている。Main.javaファイルのコンパイル後に生成されるクラスはどれか。正しいものを選びなさい。（1つ選択）','	public class A {
	}

	public class B extends A {
	}

	public class Main {
		public static void main(String[] args) {
			A a = new A();
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('2','2','次のプログラムを実行し、「T」が出力されるようにしたい。5行目に挿入するコードとして、正しいものを選びなさい。(1つ選択)','	public class Main { 
		public static void main(String[] args) {
		      Game game = new Game();

		     // insert code here
		            System.out.print("T");
		      } else {
		            System.out.print("F");
		          }
		      }
}

class Game {
	boolean flag;
}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('3','2','次のプログラムをコンパイル、実行したときの結果として正しいものを選びなさい。（1つ選択）','	public class Main {
		public static void main(String[] args) {
			int a = 3 * 5;
			int b = 25 - 10;
			if (a > b)
				System.out.println("A");
			if (a < b)
				System.out.println("B");
			if (a = b)
				System.out.println("C");
			else
				System.out.println("D");
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('4','2','次のプログラムの4行目に挿入するコードとして、正しいものを選びなさい。（1つ選択）','	public class Main {
		public static void main(String[] args) {
			String[] sa = { "a", "b", "c" };
			// insert code here
			System.out.println(s);
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('5','2','次のプログラムをコンパイル、実行したときの結果として正しいものを選びなさい。（1つ選択）','	public class Main {
		public static void main(String[] args) {
			int a = 0;
			do {
				a++;
				System.out.print("hi ");
			} while (a < 4);
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('6','2','次のプログラムをコンパイル、実行したときの結果として、正しいものを選びなさい。（1つ選択）','	public class Super {
		static String name;

		public void print() {
			System.out.println("Super : " + name);
		}
	}

	public class Sub extends Super {
		public static void print() {
			System.out.println("Sub : " + name);
		}

		public static void main(String[] args) {
			Super a, b;
			a = new Super();
			b = new Sub();

			a.name = "A";
			b.name = "B";

			a.print();
			b.print();
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('7','2','次のプログラムをコンパイル、実行したときの結果として、正しいものを選びなさい。（1つ選択）','	public class Parent {
		void printInfo() {
			System.out.println("parent");
		}
	}

	public class Child extends Parent {
		void printInfo() {
			System.out.println("child");
		}

		public static void main(String[] args) {
			Parent a = new Child();
			a.printInfo();
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('8','2','次のプログラムをコンパイル、実行したときの結果として、正しいものを選びなさい。（1つ選択）','	public class Main {
		public static void main(String[] args) {
			System.out.println(args[1] + "," + args[2]);
		}
	}
【実行方法】
java Main easy normal hard','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('9','2','次のプログラムの2行目に挿入するコードとして、正しいものを選びなさい。（2つ選択）','	
	public interface Sample {
	       // insert code here 
	 }','2',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('10','2','次のうち、クラス宣言として有効なものを選びなさい。（3つ選択）','','3',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('11','2',' 次のプログラムを実行すると、「B, A」と表示されるようにしたい。以下の空欄にあてはまるコードを選びなさい。（1つ選択）','	public class B extends A {
		String name = "B";

		public void print() {
	        System.out.println(name + ", " + );
	     }

		public static void main(String[] args) {
			B b = new B();
			b.print();
		}
	}

	class A {
		String name = "A";
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('12','2','次のプログラムをコンパイル、実行したときの結果として、正しいものを選びなさい。（1つ選択）','	public class Main {
		public static void main(String[] args) {
			String a1 = "A";
			String a2 = new String("A");
			String a3 = new String("A");

			if (a1 == a2) {
				System.out.print("a1 == a2 ");
			} else {
				System.out.print("a1 != a2 ");
			}
			if (a2 == a3) {
				System.out.print("a2 == a3");
			} else {
				System.out.print("a2 != a3");
			}
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('13','2','次のプログラムをコンパイル、実行したときの結果として、正しいものを選びなさい。（1つ選択）','	public class B extends A {
		void test() {
			System.out.println("B");
		}

		public static void main(String[] args) {
			B b = new B();
			A a = b;
			a.test();
		}
	}

	class A {
		void test() {
			System.out.println("A");
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('14','2','次のプログラムをコンパイル、実行した結果として、正しいものを選びなさい。（1つ選択）','	public class Main {
		public static void main(String[] args) {
			int i = 1;
			double d = 1.0;
			double num = i * d;
			switch (num) {
			case 1:
				System.out.print("1");
			case 1.0:
				System.out.print("1.0");
				break;
			default:
				System.out.print("default");
			}
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('15','2','Webベースのシステムを開発するには、どのJavaテクノロジーを使えばよいか。最適なものを選びなさい。（1つ選択）','','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('16','2','次のプログラムをコンパイル、実行したときの結果として、正しいものを選びなさい。（1つ選択）','	public class Sample {
		String name;

		public void print() {
			System.out.println(name);
		}

		public static void main(String[] args) {
			Sample s1;
			Sample s2;
			s1.name = "A";
			s2.name = "B";
			s1.print();
			s2.print();
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('17','2','JVM（Java Virtual Machine）に関する説明として、正しいものを選びなさい。（1つ選択）','','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('18','2','次のプログラムをコンパイル、実行したときの結果として、正しいものを選びなさい。（1つ選択）','	public class Main {
		public static void main(String[] args) {
			int i = 3;
			while (i >= 0) {
				System.out.println(i--);
			}
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('19','2','次のうち、コンパイルエラーとなるものを選びなさい。（1つ選択）','','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('20','2','次のうち、privateキーワードで修飾できないものを選びなさい。（3つ選択）','','3',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('21','2','次のプログラムをコンパイル、実行したときの結果として、正しいものを選びなさい。（1つ選択）','	class B extends A {
		int b, c;

		B(int num) {
			b = num;
		}

		B(int num, int num2) {
			this(num);
			c = num2;
		}
	}

	class A {
		int a;

		A() {
			a = 1;
		}

		A(int num) {
			a = num;
		}
	}

	public class Main {
		public static void main(String[] args) {
			B b = new B(2, 3);
			System.out.println(b.a + "," + b.b + "," + b.c);
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('22','2','privateメソッドへのアクセスに関する説明として、正しいものを選びなさい。（1つ選択）','','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('23','2','次のプログラムのコンパイルを成功させるためには、空欄にどのコードを追加すればよいか。正しいものを選びなさい。（1つ選択）','	public class Main {
	     public static void main(String[] args) {
	      hello();
	   }
	        （空欄）   void hello() {
	   System.out.println("hello");
	      }
	  }','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('24','2',' 次のプログラムをコンパイル、実行したときの説明として、正しいものを選びなさい。（1つ選択）','	class A {
		private int num = 10;

		void print() {
			System.out.println(num);
		}
	}

	public class B extends A {
		public static void main(String[] args) {
			B b = new B();
			b.print();
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('25','2','次のプログラムのコンパイルを成功させるには、Testクラスの5行目にどのコードを追加すればよいか。正しいものを選びなさい。（1つ選択）','	class Test {
		private String a, b;
		private String c = "C";

		public Test() {
			// insert code here
		}

		public Test(String b) {
			this.b = b;
		}

		public void print() {
			System.out.println(a + "," + b);
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('26','2','次のプログラムをコンパイル、実行したときの結果として、正しいものを選びなさい。（1つ選択）','	class Sample {
		public String val;
	}

	public class Main {
		public static void main(String[] args) {
			Sample s = new Sample();
			if (s.val == "") {
				s.val = "test";
			}
			System.out.println(s.val);
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('27','2','アクセス修飾子privateで修飾できる要素として、正しいものを選びなさい。（1つ選択）','','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('28','2','次のプログラムをコンパイル、実行したときの結果として、正しいものを選びなさい。（1つ選択）','	public class Main {
		public static void main(String[] args) {
			System.out.println(args[0] + args[1]);
		}
	}
【実行方法】
java Main test','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('29','2','次のプログラムをコンパイル、実行したときの結果として、正しいものを選びなさい。（1つ選択）','	public interface A {
		int test(int x, int y);
	}

	public class B implements A {
		public int test(int a, int b) {
			return (a * b) / 2;
		}
	}

	public class C implements A {
		public int test(int c, int d) {
			return (int) (3.2 * (c * d));
		}
	}

	public class Main {
		public static void main(String[] args) {
			A[] array = { new B(), new C() };
			System.out.print(array[0].test(3, 2) + " ");
			System.out.println(array[1].test(3, 2));
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('30','2','次のプログラムをコンパイル、実行したときの結果として、正しいものを選びなさい。（1つ選択）','
	public class Shape {
		public void print() {
			System.out.println("shape");
		}
	}

	public class Triangle extends Shape {
		public void print() {
			System.out.println("triangle");
		}
	}

	public class Main {
		public static void main(String[] args) {
			Shape s = new Shape();
			Triangle t = (Triangle) s;
			t.print();
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('31','2','次のメソッドを正しくオーバーロードしているメソッドを選びなさい。（1つ選択）','	public void test(int a, int b) {}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('32','2','次の説明のうち、正しいものを選びなさい。（4つ選択）','','4',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('33','2','次のプログラムを実行し、コンソールに1から4の値を順に表示したい。空欄にあてはまるコードを選びなさい。（1つ選択）','	public class Main {
		public static void main(String[] args) {
		  for (int i = 0; 空欄 ) {
		  System.out.println(i);
		  }
		  }
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('34','2','次のプログラムをコンパイル、実行したときの結果として、正しいものを選びなさい。（1つ選択）','	public class Main {
		public static void main(String[] args) {
			int a = 10;
			int b = 20;
			if (a != 10)
				System.out.println("A");
			else if (a < b)
				System.out.println("B");
			else
				System.out.println("C");
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('35','2',' 次のクラスを継承したクラスが持つべきメソッドとして、正しいものを選びなさい。（1つ選択）','	
	abstract class Sample {
	     public abstract void test();
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('36','2','次のプログラムをコンパイル、実行したときの結果として、正しいものを選びなさい。（1つ選択）','	public class Sample {
		static String val = "sample";

		public Sample(String val) {
			this.val = val;
		}
	}

	public class Main {
		public static void main(String[] args) {
			Sample s = new Sample();
			Sample s2 = new Sample("test");
			System.out.println(s.val);
			System.out.println(s2.val);
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('37','2','フィールドを適切にカプセル化し、値が不用意に変更されないように定義したい。適切に記述されているコードを選びなさい。（1つ選択）','','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('38','2','次のプログラムをコンパイル、実行したときの結果として、正しいものを選びなさい。（1つ選択）','	public class Main {
		public static void main(String[] args) {
			int[] array = { 2, 4, 6, 8 };
			int[] array2 = { 1, 3, 5, 7, 9 };
			array = array2;
			for (int i = 0; i < array.length; i++) {
				System.out.println(array[i]);
			}
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('39','2','次のプログラムをコンパイル、実行したときの結果として、正しいものを選びなさい。（1つ選択）','	public class Main {
		public static void main(String[] args) {
			int x = 10;
			test(x);
			System.out.println(x);
		}

		private static void test(int a) {
			x++;
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('40','2','次のプログラムを実行して、0から2までを順に表示したい。4行目に挿入するコードとして、正しいものをを選びなさい。（1つ選択）','	public class Main {
		public static void main(String[] args) {
			int x = 0;
			// insert code here
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('41','2','次のプログラムを実行し、1から5までを順に表示したい。空欄①と②にあてはまるコードを選びなさい。（1つ選択）','	 public class Main {
		     public static void main(String[] args) {
		         int[] array = {1, 2, 3, 4, 5};   
		         for (① ; i < array.length; ② ) {
		              System.out.println(array[i]);
		             i++;
		      }
		      }
		 }','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('42','2','次のプログラムをコンパイル、実行したときの結果として、正しいものを選びなさい。（1つ選択）','	public class Main {
		public static void main(String[] args) {
			String str = null;

			if (str == null) {
				System.out.println("if");
			} else if (str == "null") {
				System.out.println("else if");
			} else {
				System.out.println("else");
			}
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('43','2','Javaの継承に関する説明として、正しいものを選びなさい。（2つ選択）','','2',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('44','2','次のうち、abstractで修飾できないものを選びなさい。（2つ選択）','','2',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('45','2','次のプログラムをコンパイル、実行したときの結果として、正しいものを選びなさい。（1つ選択）','	public class Main {
		public static void main(String[] args) {
			Sample s = new Sample();
			int result = s.test() + s.getNum();
			System.out.println(result);
		}
	}

	class Sample {
		private static int num;

		public static int getNum() {
			return ++num;
		}

		public int test() {
			return getNum();
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('46','2','次のプログラムをコンパイル、実行したときの結果として、正しいものを選びなさい。（1つ選択）','	public class Main {
		public static void main(String[] args) {
			Sample[] samples = { new Test(), new Exam(), new Test() };
			for (Sample s : samples) {
				s.test();
			}
		}
	}

	interface Sample {
		void test();
	}

	class Test implements Sample {
		public void test() {
			System.out.println("A");
		}
	}

	class Exam {
		public void test() {
			System.out.println("B");
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('47','2','次のうち、インタフェースに定義できないものを選びなさい。（2つ選択）','','2',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('48','2','次のプログラムを実行し、「test」と1回だけ表示したい。空欄にあてはまるコードを選びなさい。（1つ選択）','','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('49','2','com.sample.controllerパッケージに属するクラスを使う、com.sample.viewパッケージに属するクラスを定義したい。定義方法として正しいものを選びなさい。（1つ選択）','','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('50','2','次のプログラムをコンパイル、実行したときの結果として、正しいものを選びなさい。（1つ選択）','','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('51','2','次のうち、正しい説明を選びなさい。（2つ選択）','','2',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('52','2','次のプログラムに関する説明として、正しいものを選びなさい。（1つ選択）','	public class Sample {
		private static int num = 10;

		public void Sample() {
			this(10);
		}

		private Sample(int n) {
			num = n;
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('53','2','次のプログラムのうち、コンパイルエラーになるのは何行目か。正しいものを選びなさい。（3つ選択）','	public class Main {
		public static void main(String[] args) {
		          int[] array1 = { 1, 2, 3 };
		          int array2 = array1;
		          int[] array3 = new int[3];
		          array3 = new int[5];
		          int[] array4 = new int(4);
		          int[3] array5;
		      }
	}','3',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('54','2','次のプログラムの実行後に、クラスのインスタンスはいくつ生成されるか。正しい個数を選びなさい。（1つ選択）','	public class Item {

	}

	public class Main {
		public static void main(String[] args) {
			Item item1 = new Item();
			Item item2 = new Item();
			Item item3 = null;
			item1 = null;
			item2 = null;

		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('55','2','スーパークラスの要素と同じ名前で定義できるサブクラスの要素として、正しいものを選びなさい。（2つ選択）','','2',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('56','2','次のうち、クラス名として使えるものを選びなさい。（3つ選択）','','3',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('57','2','メソッドのシグニチャを構成する要素として、誤っているものを選びなさい。（3つ選択）','','3',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('58','2','次のうち、ポリモーフィズムにもっとも関係がある用語を選びなさい。（1つ選択）','','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('59','2','次のプログラムをコンパイル、実行したときの結果として、正しいものを選びなさい。（1つ選択）','	public class Main {
		public static void main(String[] args) {
			int i = 2;
			System.out.println((i += 2) + (i++));
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('60','2','次のプログラムをコンパイル、実行したときの結果として、正しいものを選びなさい。（1つ選択）','	public class Main {
		public static void main(String[] args) {
			Sample s = new Sample();
			long data = s.test(10);
			System.out.println(data);
		}
	}

	class Sample {
		public int test(int a) {
			return a * 2;
		}

		public long test(int b) {
			return b * 3;
		}
	}','1',now());



--option
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('1','1','1','プラットフォームに依存したネイティブコードが記述されている','0',now());

INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('1','1','2','プラットフォームに依存しないネイティブコードが記述されている','0',now());

INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('1','1','3','JVMだけ理解できるコードが記述されている','1',now());

INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('1','1','4','人間が理解できるコードが記述されている','0',now());

INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('1','2','1','DUMMY2-1','0',now());

INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('1','2','2','DUMMY2-2','1',now());

INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('1','2','3','DUMMY2-3','1',now());

INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('1','2','4','DUMMY2-4','0',now());

INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('1','3','1','DUMMY3-1','0',now());

INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('1','3','2','DUMMY3-2','1',now());

INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('1','3','3','DUMMY3-3','1',now());

INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('1','3','4','DUMMY3-4','0',now());

INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('1','3','5','DUMMY3-5','0',now());

INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('1','3','6','DUMMY3-6','0',now());

INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('1','3','7','DUMMY3-7','1',now());

INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','1','1','Aクラス','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','1','2','Aクラス、Mainクラス','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','1','3','Aクラス、Bクラス、Mainクラス','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','1','4','Aクラス、Bクラス','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','2','1','if(game) {','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','2','2','if(game == "false") {','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','2','3','if(game.flag) {','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','2','4','if(game.flag == "false") {','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','2','5','if(!game.flag) {','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','3','1','「C」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','3','2','「D」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','3','3','コンパイルエラーが発生する','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','3','4','実行時に例外がスローされる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','4','1','for (s : sa)','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','4','2','for (sa : s)','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','4','3','for (String s : sa)','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','4','4','for (sa : String s)','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','4','5','for (String s : String[] sa)','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','4','6','for (String[] sa : String s)','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','5','1','hiが3回表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','5','2','hiが4回表示される','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','5','3','hiが5回表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','5','4','コンパイルエラーが発生する','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','5','5','実行時に例外がスローされる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','6','1','Super : B
Super : B','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','6','2','Sub : B
Sub : B','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','6','3','Super : A
Sub : B','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','6','4','コンパイルエラーが発生する','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','7','1','「parent」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','7','2','「child」と表示される','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','7','3','「parent」「child」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','7','4','コンパイルエラーが発生する','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','7','5','実行時に例外がスローされる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','8','1','何も表示されない','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','8','2','「easy,normal」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','8','3','「normal,hard」と表示される','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','8','4','コンパイルエラーが発生する','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','8','5','実行時に例外がスローされる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','9','1','String name;','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','9','2','private void setName(String name);','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','9','3','void getName();','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','9','4','public static void sayHello(String name);','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','9','5','public void print();','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','10','1','public class A {}','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','10','2','class B extends java.lang.Object {}','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','10','3','public class C extends java.lang.* {}','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','10','4','final class D {}','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','10','5','public class E implements Object {}','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','11','1','this.name','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','11','2','super.name','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','11','3','this(name)','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','11','4','super().name','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','11','5','A.name','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','12','1','「a1 == a2 a2 == a3」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','12','2','「a1 != a2 a2 == a3」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','12','3','「a1 == a2 a2 != a3」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','12','4','「a1 != a2 a2 != a3」と表示される','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','13','1','「A」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','13','2','「B」と表示される','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','13','3','コンパイルエラーが発生する','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','13','4','実行時に例外がスローされる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','14','1','「1」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','14','2','「1.0」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','14','3','「default」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','14','4','コンパイルエラーが発生する','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','15','1','Java SE','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','15','2','Java ME','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','15','3','Java EE','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','15','4','Java DB','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','16','1','「A」「B」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','16','2','「B」「B」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','16','3','コンパイルエラーが発生する','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','16','4','実行時に例外がスローされる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','17','1','クラスファイルを読み込み、機械語にコンパイルする','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','17','2','ソースコードを事前にコンパイルしてから実行する','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','17','3','実行可能ファイルを生成する','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','17','4','クラスファイルを逆アセンブルする','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','18','1','「2」「1」「0」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','18','2','「3」「2」「1」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','18','3','「3」「2」「1」「0」と表示される','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','18','4','「3」「2」「1」「0」「-1」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','18','5','2が無限に表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','18','6','3が無限に表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','19','1','byte a = -100;','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','19','2','short b = 70000;','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','19','3','int c = 10000000;','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','19','4','long d = 1234567L;','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','20','1','クラスのコンストラクタ','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','20','2','インタフェースのメソッド','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','20','3','クラスの抽象メソッド','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','20','4','クラスの具象メソッド','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','20','5','インタフェースの定数','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','20','6','クラスの変数','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','21','1','「0,2,3」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','21','2','「1,2,3」と表示される','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','21','3','「2,0,3」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','21','4','「2,2,3」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','22','1','同じクラスのメソッドからアクセスできる','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','22','2','サブクラスのメソッドからアクセスできる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','22','3','同じパッケージに属するすべてのクラスからアクセスできる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','22','4','スーパークラスのメソッドからアクセスできる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','23','1','public','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','23','2','static','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','23','3','final','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','23','4','何も必要ない','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','24','1','numがprivateで修飾されているためコンパイルエラーになる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','24','2','printメソッドがBクラスに定義されていないためコンパイルエラーになる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','24','3','実行時に例外がスローされる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','24','4','10が表示される','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','25','1','a = "A";
this("B");','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','25','2','this("B");
a = "A";','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','25','3','this(c);
a = "A";','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','25','4','a = "A";
this.Test(c);','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','25','5','Test("B");
a = "A";','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','26','1','「null」と表示される','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','26','2','「test」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','26','3','コンパイルエラーが発生する','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','26','4','実行時に例外がスローされる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','27','1','クラス、フィールド、コンストラクタ、具象メソッド','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','27','2','クラス、フィールド、抽象メソッド','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','27','3','抽象クラス、フィールド、具象メソッド','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','27','4','インタフェース、具象メソッド','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','27','5','フィールド、抽象メソッド','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','28','1','「test」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','28','2','「Main test」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','28','3','「test null」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','28','4','実行時に例外がスローされる','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','29','1','Cクラスのコンパイルに失敗する','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','29','2','「3 19」が表示され、例外がスローされる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','29','3','Mainクラスの4行目でコンパイルエラーになる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','29','4','「3 19」が表示される','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','29','5','Bクラスの3行目でコンパイルエラーになる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','30','1','「shape」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','30','2','「triangle」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','30','3','コンパイルエラーが発生する','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','30','4','実行時に例外がスローされる','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','31','1','public void test(int a) {}','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','31','2','public int test(int a, int b) {}','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','31','3','public void sample() {}','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','31','4','public test(int a, int b) {}','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','32','1','パッケージ宣言は必須ではない','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','32','2','パッケージ宣言は、ソースファイルの先頭行に記述しなければいけない','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','32','3','1つのソースファイル内に、インタフェースとクラスの両方を定義できる','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','32','4','インポート宣言は1つだけ記述できる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','32','5','インポート宣言はソースファイルのどこに記述してもよい','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','32','6','1つのソースファイル内に、finalクラスは1つだけ定義できる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','32','7','ソースファイルの名前は、public宣言されたクラスの名前と一致させなければならない','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','33','1','++i < 5;','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','33','2','i++ < 5;','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','33','3','i < 5; i++','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','33','4','i < 5; ++i','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','34','1','「A」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','34','2','「B」と表示される','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','34','3','「C」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','34','4','「B」「C」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','34','5','コンパイルエラーが発生する','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','35','1','public void test() {}','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','35','2','void test() {}','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','35','3','public abstract void test() {}','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','35','4','public void test(String val) {}','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','36','1','「null」「test」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','36','2','「sample」「test」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','36','3','「test」「test」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','36','4','コンパイルエラーが発生する','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','37','1','public abstract int a;','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','37','2','public final int b;','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','37','3','private static int c;','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','37','4','private final int d;','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','37','5','private abstract int e;','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','38','1','「2」「4」「6」「8」「1」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','38','2','「2」「4」「6」「8」「9」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','38','3','「1」「3」「5」「7」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','38','4','「1」「3」「5」「7」「9」と表示される','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','38','5','コンパイルエラーが発生する','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','38','6','実行時に例外がスローされる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','39','1','10が表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','39','2','11が表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','39','3','コンパイルエラーが発生する','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','39','4','実行時に例外がスローされる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','40','1','while(++x < 3) 
{ System.out.println(x); };','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','40','2','while(x++ < 3) 
{ System.out.println(x); };','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','40','3','do while(++x < 3) 
{ System.out.println(x); };','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','40','4','do { System.out.println(x); }
while( ++x < 3);','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','41','1','① int i = 0 ② i++','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','41','2','① int i = 1 ② i++','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','41','3','① int i = 0 ② なし','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','41','4','① int i = 1 ② なし','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','42','1','「if」と表示される','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','42','2','「else if」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','42','3','「else」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','42','4','コンパイルエラーが発生する','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','42','5','実行時に例外がスローされる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','43','1','多重継承ができる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','43','2','1つのクラスは、複数のサブクラスから継承されることができる','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','43','3','継承したクラスは、継承元のすべてを引き継ぐ','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','43','4','サブクラスからさらにサブクラスを作ることができる','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','44','1','クラス','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','44','2','変数','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','44','3','メソッド','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','44','4','パッケージ','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','45','1','3が表示される','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','45','2','例外がスローされ、何も表示されない','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','45','3','Sampleクラスのtestメソッドでコンパイルエラーになる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','45','4','Mainクラスのmainメソッドでコンパイルエラーになる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','46','1','「A」「 B」「 A」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','46','2','Sampleインタフェースのコンパイルに失敗する','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','46','3','Examクラスのコンパイルに失敗する','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','46','4','Mainクラスのコンパイルに失敗する','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','46','5','実行時に例外がスローされる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','47','1','public String a = "A";','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','47','2','abstract String b;','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','47','3','private String c = "C";','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','47','4','void setData(String data);','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','47','5','abstract void setData(String data);','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','47','6','blic void setData(String data);','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','48','1','4','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','48','2','6','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','48','3','7','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','48','4','8','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','49','1','package com.sample.view;
import com.sample.controlle;','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','49','2','import com.sample.controller;
package com.sample.view;','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','49','3','package com.sample.view;
import com.sample.controller.*;','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','49','4','import com.sample.controller.*;
package com.sample.view;','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','50','1','「eeee」と表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','50','2','「eeeee」と表示される','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','50','3','何も表示されない','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','50','4','コンパイルエラーが発生する','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','50','5','実行時に例外がスローされる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','51','1','サブクラスに、スーパークラスのメソッドと名前が同じで引数が異なるメソッドを定義することを「オーバーロード」と呼ぶ','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','51','2','サブクラスに、スーパークラスのメソッドと名前が同じで引数が異なるメソッドを定義することを「オーバーライド」と呼ぶ','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','51','3','サブクラスに、スーパークラスのメソッドとシグニチャが同じメソッドを定義することを「オーバーロード」と呼ぶ','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','51','4','サブクラスに、スーパークラスのメソッドとシグニチャが同じメソッドを定義することを「オーバーライド」と呼ぶ','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','52','1','コンストラクタからstaticフィールドにアクセスしているためにコンパイルエラーになる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','52','2','コンストラクタの戻り値型をvoidにしているためコンパイルエラーになる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','52','3','コンストラクタをprivateで修飾しているためコンパイルエラーになる','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','52','4','メソッドからコンストラクタを呼び出しているためコンパイルエラーになる','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','53','1','3行目','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','53','2','4行目','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','53','3','5行目','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','53','4','6行目','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','53','5','7行目','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','53','6','8行目','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','54','1','0個','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','54','2','1個','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','54','3','2個','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','54','4','3個','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','55','1','フィールド','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','55','2','privateで修飾されていないコンストラクタ','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','55','3','privateで修飾されたコンストラクタ','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','55','4','finalで修飾されていないメソッド','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','55','5','finalで修飾されたメソッド','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','56','1','A#','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','56','2','$B','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','56','3','C%','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','56','4','D9','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','56','5','E-','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','56','6','F_','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','57','1','修飾子','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','57','2','メソッド名','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','57','3','引数の数','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','57','4','引数の型','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','57','5','引数の順序','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','57','6','引数の名前','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','57','7','戻り値型','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','58','1','継承','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','58','2','オーバーライド','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','58','3','オーバーロード','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','58','4','インタフェースの継承','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','59','1','4が表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','59','2','6が表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','59','3','8が表示される','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','59','4','9が表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','60','1','20が表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','60','2','30が表示される','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','60','3','コンパイルエラーが発生する','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','60','4','実行時に例外がスローされる','FALSE',now());



-- exam_event
INSERT INTO public."exam_event"(exam_event_id,user_id,test_id,test_result,create_datetime)
VALUES('1','1','1','80',now());
-- user_test_answer
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('1','1','true','2',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('1','2','false','1,2',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('1','3','true','1,2,3',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('1','4','false','1',now());

INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','1','TRUE','2',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','2','FALSE','1',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','3','TRUE','3',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','4','TRUE','3',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','5','TRUE','2',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','6','TRUE','4',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','7','FALSE','1',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','8','TRUE','3',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','9','TRUE','3,5',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','10','FALSE','1,2,3',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','11','TRUE','2',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','12','TRUE','4',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','13','FALSE','3',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','14','TRUE','4',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','15','TRUE','3',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','16','FALSE','2',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','17','FALSE','2',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','18','TRUE','3',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','19','TRUE','2',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','20','TRUE','2,3,5',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','21','TRUE','2',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','22','TRUE','1',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','23','TRUE','2',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','24','TRUE','4',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','25','TRUE','2',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','26','TRUE','1',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','27','TRUE','1',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','28','FALSE','3',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','29','TRUE','4',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','30','TRUE','4',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','31','TRUE','1',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','32','FALSE','1,2,3,5',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','33','TRUE','1',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','34','TRUE','2',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','35','TRUE','1',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','36','TRUE','4',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','37','TRUE','4',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','38','TRUE','4',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','39','FALSE','2',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','40','FALSE','1',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','41','TRUE','3',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','42','TRUE','1',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','43','TRUE','2,4',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','44','TRUE','2,4',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','45','TRUE','1',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','46','TRUE','4',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','47','TRUE','2,3',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','48','TRUE','2',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','49','TRUE','3',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','50','TRUE','2',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','51','FALSE','2,4',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','52','TRUE','4',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','53','TRUE','2,5,6',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','54','TRUE','3',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','55','TRUE','1,4',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','56','TRUE','2,4,6',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','57','TRUE','2,6,7',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','58','FALSE','3',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','59','TRUE','3',now());
INSERT INTO public."user_test_answer"(exam_event_id,question_id,user_answer_right_or_wrong,user_answer_option,create_datetime)
VALUES('2','60','TRUE','3',now());






-- SEQUENCE
SELECT pg_catalog.setval('public."User_userinfo_use_id_seq"', 2, true);

SELECT pg_catalog.setval('public."User_login_user_id_seq"', 2, true);

SELECT pg_catalog.setval('public."Product_Exam_exam_test_id_seq"', 2, true);

SELECT pg_catalog.setval('public."Exam_exam_event_id_seq"', 1, true);


