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
 VALUES('1','level_test','Java SE Bronze','�uJava SE 11�v�́A2017�N9���ɔ��\���ꂽ�V���������[�X�E���f���ւ̈ڍs�㏉�� LTS �����[�X�ł���A��ƃV�X�e����N���E�h�E�T�[�r�X�A�X�}�[�g�E�f�o�C�X�ȂǂŊ��p�����A�v���P�[�V�����J���̐��Y������ɏd�_�������Ă��܂��B���̎��i���擾���邱�ƂŁA�ƊE�W���ɏ����������x�ȃX�L�����ؖ����܂��B
Oracle Certified Java Programmer, Bronze SE �F�莑�i�́A���ꖢ�o���Ҍ����̓��厑�i�� Java ������g�p�����I�u�W�F�N�g�w���v���O���~���O�̊�{�I�Ȓm����L���邱�� ��]�����邱�Ƃ�ړI�Ƃ��Ă��܂��BOracle Certified Java Programmer, Bronze SE �F�莑�i���擾���邽�߂ɂ́AJava SE Bronze (1Z0-818-JPN) ���� �̍��i���K�v�ł��B',now());

INSERT INTO public."exam"(test_id,test_category,test_name,description,create_datetime)
VALUES('2','Java','���͑��d�グ���','Java SE Bronze ���K���',now());

INSERT INTO public."exam"(test_id,test_category,test_name,description,create_datetime)
 VALUES('3','��񏈗��Z�p�Ҏ���','��{���Z�p�Ҏ���','��{���Z�p�Ҏ����̑Ώێ҂͍��xIT�l�ނƂȂ邽�߂ɕK�v�Ȋ�{�I�m���E�Z�\�������A���H�I�Ȋ��p�\�͂�g�ɕt�����҂ł��B',now());
 
INSERT INTO public."exam"(test_id,test_category,test_name,description,create_datetime)
VALUES('4','��񏈗��Z�p�Ҏ���','���p���Z�p�Ҏ���','IT�G���W�j�A�Ƃ��Ẵ��x���A�b�v��}��ɂ́A���p���Z�p�Ҏ����������߂ł��B�Z�p����Ǘ��A�o�c�܂ŁA���L���m���Ɖ��p�͂��g�ɕt���A�V�X�e���J���AIT��Ս\�z�Ȃǂ̋ǖʂŁA�����p�t�H�[�}���X�𔭊����邱�Ƃ��ł��܂��B',now());

INSERT INTO public."exam"(test_id,test_category,test_name,description,create_datetime)
VALUES('5','��񏈗��Z�p�Ҏ���','IT�p�X�|�[�g����','�E�Ɛl�����ʂɔ����Ă����ׂ����Z�p�Ɋւ����b�I�Ȓm���������A���Z�p�Ɍg���Ɩ��ɏA�����A�S���Ɩ��ɑ΂��ď��Z�p�����p���Ă������Ƃ���ҁB',now());

 INSERT INTO public."exam"(test_id,test_category,test_name,description,create_datetime)
VALUES('6','AWS���i��','AWS Certified DevOps Engineer - Professional','���̎��i�́A�g�D���N���E�h�C�j�V�A�`�u���������邽�߂̏d�v�ȃX�L�������l�ނ���肵�Ĉ琬����̂ɖ𗧂��܂��BAWS Certified DevOps Engineer - Professional ���擾����ƁAAWS �C���t���X�g���N�`���ƃA�v���P�[�V�����̃e�X�g�ƃf�v���C������������\�͂��F�肳��܂��B',now());

 INSERT INTO public."exam"(test_id,test_category,test_name,description,create_datetime)
VALUES('7','AWS���i��','AWS Certified Solutions Architect ? Associate','���̎��i�́A�g�D���N���E�h�C�j�V�A�`�u���������邽�߂̏d�v�ȃX�L�������l�ނ���肵�Ĉ琬����̂ɖ𗧂��܂��BAWS Certified Solutions Architect ? Associate ���擾����ƁAAWS ��ŕ��U�V�X�e����݌v�A��������\�͂��F�肳��܂��B',now());

 INSERT INTO public."exam"(test_id,test_category,test_name,description,create_datetime)
VALUES('8','AWS���i��','AWS Certified Developer-Associate','���̎��i�́A�g�D���N���E�h�C�j�V�A�`�u���������邽�߂̏d�v�ȃX�L�������l�ނ���肵�Ĉ琬����̂ɖ𗧂��܂��BAWS Certified Developer - Associate ���擾����ƁA�N���E�h�x�[�X�̃A�v���P�[�V�����ŏ������݂���уf�v���C���s���\�͂�F�肵�܂��B',now());

INSERT INTO public."exam"(test_id,test_category,test_name,description,create_datetime)
 VALUES('9','AWS���i��','AWS Certified Cloud Practitioner','AWS Certified Cloud Practitioner �́AAWS �v���b�g�t�H�[���̊�{�I�Ȓm�����������̕���ΏۂƂ��Ă��܂��B�g�D���N���E�h�C�j�V�A�`�u���������邽�߂̏d�v�Ȓm�������l�ނ���肵�Ĉ琬����̂ɖ𗧂��܂��BAWS Certified Cloud Practitioner ���擾���邱�ƂŁA�N���E�h�ւ̗����Ɗ�b�I�� AWS �̒m�����F�肳��܂��B',now());
 
 INSERT INTO public."exam"(test_id,test_category,test_name,description,create_datetime)
VALUES('10','AWS���i��','AWS Certified Solutions Architect - Professional','���̎��i�́A�g�D���N���E�h�C�j�V�A�`�u���������邽�߂̏d�v�ȃX�L�������l�ނ���肵�Ĉ琬����̂ɖ𗧂��܂��BAWS Certified Solutions Architect - Professional ���擾����ƁA���l�ŕ��G�ȗv�����ɂ����āAAWS �̃A�v���P�[�V������݌v�A�f�v���C�A�]������\�͂��F�肳��܂��B',now());


--question
INSERT INTO public."question"(test_id,question_id,text,code,right_select_count,create_datetime)
VALUES('1','1','Java�̃N���X�t�@�C���Ɋւ�����������āA���������̂�I�тȂ����B�i��I���j','','1',now());

INSERT INTO public."question"(test_id,question_id,text,code,right_select_count,create_datetime)
VALUES('1','2','DUMMY2','ABCDEFG','2',now());

INSERT INTO public."question"(test_id,question_id,text,code,right_select_count,create_datetime)
VALUES('1','3','DUMMY question 3','XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX','3',now());








INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('1','2','���̂悤��A�N���X��B�N���X����`����Ă���BMain.java�t�@�C���̃R���p�C����ɐ��������N���X�͂ǂꂩ�B���������̂�I�тȂ����B�i1�I���j','	public class A {
	}

	public class B extends A {
	}

	public class Main {
		public static void main(String[] args) {
			A a = new A();
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('2','2','���̃v���O���������s���A�uT�v���o�͂����悤�ɂ������B5�s�ڂɑ}������R�[�h�Ƃ��āA���������̂�I�тȂ����B(1�I��)','	public class Main { 
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
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('3','2','���̃v���O�������R���p�C���A���s�����Ƃ��̌��ʂƂ��Đ��������̂�I�тȂ����B�i1�I���j','	public class Main {
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
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('4','2','���̃v���O������4�s�ڂɑ}������R�[�h�Ƃ��āA���������̂�I�тȂ����B�i1�I���j','	public class Main {
		public static void main(String[] args) {
			String[] sa = { "a", "b", "c" };
			// insert code here
			System.out.println(s);
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('5','2','���̃v���O�������R���p�C���A���s�����Ƃ��̌��ʂƂ��Đ��������̂�I�тȂ����B�i1�I���j','	public class Main {
		public static void main(String[] args) {
			int a = 0;
			do {
				a++;
				System.out.print("hi ");
			} while (a < 4);
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('6','2','���̃v���O�������R���p�C���A���s�����Ƃ��̌��ʂƂ��āA���������̂�I�тȂ����B�i1�I���j','	public class Super {
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
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('7','2','���̃v���O�������R���p�C���A���s�����Ƃ��̌��ʂƂ��āA���������̂�I�тȂ����B�i1�I���j','	public class Parent {
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
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('8','2','���̃v���O�������R���p�C���A���s�����Ƃ��̌��ʂƂ��āA���������̂�I�тȂ����B�i1�I���j','	public class Main {
		public static void main(String[] args) {
			System.out.println(args[1] + "," + args[2]);
		}
	}
�y���s���@�z
java Main easy normal hard','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('9','2','���̃v���O������2�s�ڂɑ}������R�[�h�Ƃ��āA���������̂�I�тȂ����B�i2�I���j','	
	public interface Sample {
	       // insert code here 
	 }','2',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('10','2','���̂����A�N���X�錾�Ƃ��ėL���Ȃ��̂�I�тȂ����B�i3�I���j','','3',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('11','2',' ���̃v���O���������s����ƁA�uB, A�v�ƕ\�������悤�ɂ������B�ȉ��̋󗓂ɂ��Ă͂܂�R�[�h��I�тȂ����B�i1�I���j','	public class B extends A {
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
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('12','2','���̃v���O�������R���p�C���A���s�����Ƃ��̌��ʂƂ��āA���������̂�I�тȂ����B�i1�I���j','	public class Main {
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
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('13','2','���̃v���O�������R���p�C���A���s�����Ƃ��̌��ʂƂ��āA���������̂�I�тȂ����B�i1�I���j','	public class B extends A {
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
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('14','2','���̃v���O�������R���p�C���A���s�������ʂƂ��āA���������̂�I�тȂ����B�i1�I���j','	public class Main {
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
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('15','2','Web�x�[�X�̃V�X�e�����J������ɂ́A�ǂ�Java�e�N�m���W�[���g���΂悢���B�œK�Ȃ��̂�I�тȂ����B�i1�I���j','','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('16','2','���̃v���O�������R���p�C���A���s�����Ƃ��̌��ʂƂ��āA���������̂�I�тȂ����B�i1�I���j','	public class Sample {
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
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('17','2','JVM�iJava Virtual Machine�j�Ɋւ�������Ƃ��āA���������̂�I�тȂ����B�i1�I���j','','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('18','2','���̃v���O�������R���p�C���A���s�����Ƃ��̌��ʂƂ��āA���������̂�I�тȂ����B�i1�I���j','	public class Main {
		public static void main(String[] args) {
			int i = 3;
			while (i >= 0) {
				System.out.println(i--);
			}
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('19','2','���̂����A�R���p�C���G���[�ƂȂ���̂�I�тȂ����B�i1�I���j','','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('20','2','���̂����Aprivate�L�[���[�h�ŏC���ł��Ȃ����̂�I�тȂ����B�i3�I���j','','3',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('21','2','���̃v���O�������R���p�C���A���s�����Ƃ��̌��ʂƂ��āA���������̂�I�тȂ����B�i1�I���j','	class B extends A {
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
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('22','2','private���\�b�h�ւ̃A�N�Z�X�Ɋւ�������Ƃ��āA���������̂�I�тȂ����B�i1�I���j','','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('23','2','���̃v���O�����̃R���p�C���𐬌������邽�߂ɂ́A�󗓂ɂǂ̃R�[�h��ǉ�����΂悢���B���������̂�I�тȂ����B�i1�I���j','	public class Main {
	     public static void main(String[] args) {
	      hello();
	   }
	        �i�󗓁j   void hello() {
	   System.out.println("hello");
	      }
	  }','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('24','2',' ���̃v���O�������R���p�C���A���s�����Ƃ��̐����Ƃ��āA���������̂�I�тȂ����B�i1�I���j','	class A {
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
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('25','2','���̃v���O�����̃R���p�C���𐬌�������ɂ́ATest�N���X��5�s�ڂɂǂ̃R�[�h��ǉ�����΂悢���B���������̂�I�тȂ����B�i1�I���j','	class Test {
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
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('26','2','���̃v���O�������R���p�C���A���s�����Ƃ��̌��ʂƂ��āA���������̂�I�тȂ����B�i1�I���j','	class Sample {
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
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('27','2','�A�N�Z�X�C���qprivate�ŏC���ł���v�f�Ƃ��āA���������̂�I�тȂ����B�i1�I���j','','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('28','2','���̃v���O�������R���p�C���A���s�����Ƃ��̌��ʂƂ��āA���������̂�I�тȂ����B�i1�I���j','	public class Main {
		public static void main(String[] args) {
			System.out.println(args[0] + args[1]);
		}
	}
�y���s���@�z
java Main test','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('29','2','���̃v���O�������R���p�C���A���s�����Ƃ��̌��ʂƂ��āA���������̂�I�тȂ����B�i1�I���j','	public interface A {
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
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('30','2','���̃v���O�������R���p�C���A���s�����Ƃ��̌��ʂƂ��āA���������̂�I�тȂ����B�i1�I���j','
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
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('31','2','���̃��\�b�h�𐳂����I�[�o�[���[�h���Ă��郁�\�b�h��I�тȂ����B�i1�I���j','	public void test(int a, int b) {}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('32','2','���̐����̂����A���������̂�I�тȂ����B�i4�I���j','','4',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('33','2','���̃v���O���������s���A�R���\�[����1����4�̒l�����ɕ\���������B�󗓂ɂ��Ă͂܂�R�[�h��I�тȂ����B�i1�I���j','	public class Main {
		public static void main(String[] args) {
		  for (int i = 0; �� ) {
		  System.out.println(i);
		  }
		  }
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('34','2','���̃v���O�������R���p�C���A���s�����Ƃ��̌��ʂƂ��āA���������̂�I�тȂ����B�i1�I���j','	public class Main {
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
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('35','2',' ���̃N���X���p�������N���X�����ׂ����\�b�h�Ƃ��āA���������̂�I�тȂ����B�i1�I���j','	
	abstract class Sample {
	     public abstract void test();
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('36','2','���̃v���O�������R���p�C���A���s�����Ƃ��̌��ʂƂ��āA���������̂�I�тȂ����B�i1�I���j','	public class Sample {
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
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('37','2','�t�B�[���h��K�؂ɃJ�v�Z�������A�l���s�p�ӂɕύX����Ȃ��悤�ɒ�`�������B�K�؂ɋL�q����Ă���R�[�h��I�тȂ����B�i1�I���j','','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('38','2','���̃v���O�������R���p�C���A���s�����Ƃ��̌��ʂƂ��āA���������̂�I�тȂ����B�i1�I���j','	public class Main {
		public static void main(String[] args) {
			int[] array = { 2, 4, 6, 8 };
			int[] array2 = { 1, 3, 5, 7, 9 };
			array = array2;
			for (int i = 0; i < array.length; i++) {
				System.out.println(array[i]);
			}
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('39','2','���̃v���O�������R���p�C���A���s�����Ƃ��̌��ʂƂ��āA���������̂�I�тȂ����B�i1�I���j','	public class Main {
		public static void main(String[] args) {
			int x = 10;
			test(x);
			System.out.println(x);
		}

		private static void test(int a) {
			x++;
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('40','2','���̃v���O���������s���āA0����2�܂ł����ɕ\���������B4�s�ڂɑ}������R�[�h�Ƃ��āA���������̂���I�тȂ����B�i1�I���j','	public class Main {
		public static void main(String[] args) {
			int x = 0;
			// insert code here
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('41','2','���̃v���O���������s���A1����5�܂ł����ɕ\���������B�󗓇@�ƇA�ɂ��Ă͂܂�R�[�h��I�тȂ����B�i1�I���j','	 public class Main {
		     public static void main(String[] args) {
		         int[] array = {1, 2, 3, 4, 5};   
		         for (�@ ; i < array.length; �A ) {
		              System.out.println(array[i]);
		             i++;
		      }
		      }
		 }','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('42','2','���̃v���O�������R���p�C���A���s�����Ƃ��̌��ʂƂ��āA���������̂�I�тȂ����B�i1�I���j','	public class Main {
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
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('43','2','Java�̌p���Ɋւ�������Ƃ��āA���������̂�I�тȂ����B�i2�I���j','','2',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('44','2','���̂����Aabstract�ŏC���ł��Ȃ����̂�I�тȂ����B�i2�I���j','','2',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('45','2','���̃v���O�������R���p�C���A���s�����Ƃ��̌��ʂƂ��āA���������̂�I�тȂ����B�i1�I���j','	public class Main {
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
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('46','2','���̃v���O�������R���p�C���A���s�����Ƃ��̌��ʂƂ��āA���������̂�I�тȂ����B�i1�I���j','	public class Main {
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
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('47','2','���̂����A�C���^�t�F�[�X�ɒ�`�ł��Ȃ����̂�I�тȂ����B�i2�I���j','','2',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('48','2','���̃v���O���������s���A�utest�v��1�񂾂��\���������B�󗓂ɂ��Ă͂܂�R�[�h��I�тȂ����B�i1�I���j','','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('49','2','com.sample.controller�p�b�P�[�W�ɑ�����N���X���g���Acom.sample.view�p�b�P�[�W�ɑ�����N���X���`�������B��`���@�Ƃ��Đ��������̂�I�тȂ����B�i1�I���j','','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('50','2','���̃v���O�������R���p�C���A���s�����Ƃ��̌��ʂƂ��āA���������̂�I�тȂ����B�i1�I���j','','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('51','2','���̂����A������������I�тȂ����B�i2�I���j','','2',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('52','2','���̃v���O�����Ɋւ�������Ƃ��āA���������̂�I�тȂ����B�i1�I���j','	public class Sample {
		private static int num = 10;

		public void Sample() {
			this(10);
		}

		private Sample(int n) {
			num = n;
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('53','2','���̃v���O�����̂����A�R���p�C���G���[�ɂȂ�͉̂��s�ڂ��B���������̂�I�тȂ����B�i3�I���j','	public class Main {
		public static void main(String[] args) {
		          int[] array1 = { 1, 2, 3 };
		          int array2 = array1;
		          int[] array3 = new int[3];
		          array3 = new int[5];
		          int[] array4 = new int(4);
		          int[3] array5;
		      }
	}','3',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('54','2','���̃v���O�����̎��s��ɁA�N���X�̃C���X�^���X�͂�����������邩�B����������I�тȂ����B�i1�I���j','	public class Item {

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
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('55','2','�X�[�p�[�N���X�̗v�f�Ɠ������O�Œ�`�ł���T�u�N���X�̗v�f�Ƃ��āA���������̂�I�тȂ����B�i2�I���j','','2',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('56','2','���̂����A�N���X���Ƃ��Ďg������̂�I�тȂ����B�i3�I���j','','3',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('57','2','���\�b�h�̃V�O�j�`�����\������v�f�Ƃ��āA����Ă�����̂�I�тȂ����B�i3�I���j','','3',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('58','2','���̂����A�|�����[�t�B�Y���ɂ����Ƃ��֌W������p���I�тȂ����B�i1�I���j','','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('59','2','���̃v���O�������R���p�C���A���s�����Ƃ��̌��ʂƂ��āA���������̂�I�тȂ����B�i1�I���j','	public class Main {
		public static void main(String[] args) {
			int i = 2;
			System.out.println((i += 2) + (i++));
		}
	}','1',now());
INSERT INTO public.question(question_id,test_id,text,code,right_select_count,create_datetime)VALUES('60','2','���̃v���O�������R���p�C���A���s�����Ƃ��̌��ʂƂ��āA���������̂�I�тȂ����B�i1�I���j','	public class Main {
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
VALUES('1','1','1','�v���b�g�t�H�[���Ɉˑ������l�C�e�B�u�R�[�h���L�q����Ă���','0',now());

INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('1','1','2','�v���b�g�t�H�[���Ɉˑ����Ȃ��l�C�e�B�u�R�[�h���L�q����Ă���','0',now());

INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('1','1','3','JVM���������ł���R�[�h���L�q����Ă���','1',now());

INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('1','1','4','�l�Ԃ������ł���R�[�h���L�q����Ă���','0',now());

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
VALUES('2','1','1','A�N���X','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','1','2','A�N���X�AMain�N���X','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','1','3','A�N���X�AB�N���X�AMain�N���X','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','1','4','A�N���X�AB�N���X','FALSE',now());
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
VALUES('2','3','1','�uC�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','3','2','�uD�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','3','3','�R���p�C���G���[����������','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','3','4','���s���ɗ�O���X���[�����','FALSE',now());
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
VALUES('2','5','1','hi��3��\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','5','2','hi��4��\�������','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','5','3','hi��5��\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','5','4','�R���p�C���G���[����������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','5','5','���s���ɗ�O���X���[�����','FALSE',now());
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
VALUES('2','6','4','�R���p�C���G���[����������','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','7','1','�uparent�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','7','2','�uchild�v�ƕ\�������','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','7','3','�uparent�v�uchild�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','7','4','�R���p�C���G���[����������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','7','5','���s���ɗ�O���X���[�����','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','8','1','�����\������Ȃ�','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','8','2','�ueasy,normal�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','8','3','�unormal,hard�v�ƕ\�������','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','8','4','�R���p�C���G���[����������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','8','5','���s���ɗ�O���X���[�����','FALSE',now());
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
VALUES('2','12','1','�ua1 == a2 a2 == a3�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','12','2','�ua1 != a2 a2 == a3�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','12','3','�ua1 == a2 a2 != a3�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','12','4','�ua1 != a2 a2 != a3�v�ƕ\�������','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','13','1','�uA�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','13','2','�uB�v�ƕ\�������','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','13','3','�R���p�C���G���[����������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','13','4','���s���ɗ�O���X���[�����','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','14','1','�u1�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','14','2','�u1.0�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','14','3','�udefault�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','14','4','�R���p�C���G���[����������','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','15','1','Java SE','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','15','2','Java ME','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','15','3','Java EE','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','15','4','Java DB','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','16','1','�uA�v�uB�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','16','2','�uB�v�uB�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','16','3','�R���p�C���G���[����������','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','16','4','���s���ɗ�O���X���[�����','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','17','1','�N���X�t�@�C����ǂݍ��݁A�@�B��ɃR���p�C������','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','17','2','�\�[�X�R�[�h�����O�ɃR���p�C�����Ă�����s����','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','17','3','���s�\�t�@�C���𐶐�����','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','17','4','�N���X�t�@�C�����t�A�Z���u������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','18','1','�u2�v�u1�v�u0�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','18','2','�u3�v�u2�v�u1�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','18','3','�u3�v�u2�v�u1�v�u0�v�ƕ\�������','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','18','4','�u3�v�u2�v�u1�v�u0�v�u-1�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','18','5','2�������ɕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','18','6','3�������ɕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','19','1','byte a = -100;','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','19','2','short b = 70000;','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','19','3','int c = 10000000;','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','19','4','long d = 1234567L;','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','20','1','�N���X�̃R���X�g���N�^','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','20','2','�C���^�t�F�[�X�̃��\�b�h','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','20','3','�N���X�̒��ۃ��\�b�h','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','20','4','�N���X�̋�ۃ��\�b�h','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','20','5','�C���^�t�F�[�X�̒萔','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','20','6','�N���X�̕ϐ�','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','21','1','�u0,2,3�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','21','2','�u1,2,3�v�ƕ\�������','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','21','3','�u2,0,3�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','21','4','�u2,2,3�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','22','1','�����N���X�̃��\�b�h����A�N�Z�X�ł���','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','22','2','�T�u�N���X�̃��\�b�h����A�N�Z�X�ł���','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','22','3','�����p�b�P�[�W�ɑ����邷�ׂẴN���X����A�N�Z�X�ł���','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','22','4','�X�[�p�[�N���X�̃��\�b�h����A�N�Z�X�ł���','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','23','1','public','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','23','2','static','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','23','3','final','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','23','4','�����K�v�Ȃ�','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','24','1','num��private�ŏC������Ă��邽�߃R���p�C���G���[�ɂȂ�','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','24','2','print���\�b�h��B�N���X�ɒ�`����Ă��Ȃ����߃R���p�C���G���[�ɂȂ�','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','24','3','���s���ɗ�O���X���[�����','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','24','4','10���\�������','TRUE',now());
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
VALUES('2','26','1','�unull�v�ƕ\�������','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','26','2','�utest�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','26','3','�R���p�C���G���[����������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','26','4','���s���ɗ�O���X���[�����','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','27','1','�N���X�A�t�B�[���h�A�R���X�g���N�^�A��ۃ��\�b�h','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','27','2','�N���X�A�t�B�[���h�A���ۃ��\�b�h','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','27','3','���ۃN���X�A�t�B�[���h�A��ۃ��\�b�h','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','27','4','�C���^�t�F�[�X�A��ۃ��\�b�h','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','27','5','�t�B�[���h�A���ۃ��\�b�h','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','28','1','�utest�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','28','2','�uMain test�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','28','3','�utest null�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','28','4','���s���ɗ�O���X���[�����','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','29','1','C�N���X�̃R���p�C���Ɏ��s����','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','29','2','�u3 19�v���\������A��O���X���[�����','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','29','3','Main�N���X��4�s�ڂŃR���p�C���G���[�ɂȂ�','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','29','4','�u3 19�v���\�������','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','29','5','B�N���X��3�s�ڂŃR���p�C���G���[�ɂȂ�','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','30','1','�ushape�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','30','2','�utriangle�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','30','3','�R���p�C���G���[����������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','30','4','���s���ɗ�O���X���[�����','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','31','1','public void test(int a) {}','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','31','2','public int test(int a, int b) {}','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','31','3','public void sample() {}','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','31','4','public test(int a, int b) {}','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','32','1','�p�b�P�[�W�錾�͕K�{�ł͂Ȃ�','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','32','2','�p�b�P�[�W�錾�́A�\�[�X�t�@�C���̐擪�s�ɋL�q���Ȃ���΂����Ȃ�','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','32','3','1�̃\�[�X�t�@�C�����ɁA�C���^�t�F�[�X�ƃN���X�̗������`�ł���','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','32','4','�C���|�[�g�錾��1�����L�q�ł���','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','32','5','�C���|�[�g�錾�̓\�[�X�t�@�C���̂ǂ��ɋL�q���Ă��悢','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','32','6','1�̃\�[�X�t�@�C�����ɁAfinal�N���X��1������`�ł���','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','32','7','�\�[�X�t�@�C���̖��O�́Apublic�錾���ꂽ�N���X�̖��O�ƈ�v�����Ȃ���΂Ȃ�Ȃ�','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','33','1','++i < 5;','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','33','2','i++ < 5;','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','33','3','i < 5; i++','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','33','4','i < 5; ++i','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','34','1','�uA�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','34','2','�uB�v�ƕ\�������','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','34','3','�uC�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','34','4','�uB�v�uC�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','34','5','�R���p�C���G���[����������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','35','1','public void test() {}','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','35','2','void test() {}','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','35','3','public abstract void test() {}','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','35','4','public void test(String val) {}','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','36','1','�unull�v�utest�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','36','2','�usample�v�utest�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','36','3','�utest�v�utest�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','36','4','�R���p�C���G���[����������','TRUE',now());
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
VALUES('2','38','1','�u2�v�u4�v�u6�v�u8�v�u1�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','38','2','�u2�v�u4�v�u6�v�u8�v�u9�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','38','3','�u1�v�u3�v�u5�v�u7�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','38','4','�u1�v�u3�v�u5�v�u7�v�u9�v�ƕ\�������','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','38','5','�R���p�C���G���[����������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','38','6','���s���ɗ�O���X���[�����','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','39','1','10���\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','39','2','11���\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','39','3','�R���p�C���G���[����������','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','39','4','���s���ɗ�O���X���[�����','FALSE',now());
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
VALUES('2','41','1','�@ int i = 0 �A i++','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','41','2','�@ int i = 1 �A i++','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','41','3','�@ int i = 0 �A �Ȃ�','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','41','4','�@ int i = 1 �A �Ȃ�','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','42','1','�uif�v�ƕ\�������','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','42','2','�uelse if�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','42','3','�uelse�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','42','4','�R���p�C���G���[����������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','42','5','���s���ɗ�O���X���[�����','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','43','1','���d�p�����ł���','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','43','2','1�̃N���X�́A�����̃T�u�N���X����p������邱�Ƃ��ł���','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','43','3','�p�������N���X�́A�p�����̂��ׂĂ������p��','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','43','4','�T�u�N���X���炳��ɃT�u�N���X����邱�Ƃ��ł���','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','44','1','�N���X','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','44','2','�ϐ�','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','44','3','���\�b�h','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','44','4','�p�b�P�[�W','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','45','1','3���\�������','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','45','2','��O���X���[����A�����\������Ȃ�','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','45','3','Sample�N���X��test���\�b�h�ŃR���p�C���G���[�ɂȂ�','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','45','4','Main�N���X��main���\�b�h�ŃR���p�C���G���[�ɂȂ�','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','46','1','�uA�v�u B�v�u A�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','46','2','Sample�C���^�t�F�[�X�̃R���p�C���Ɏ��s����','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','46','3','Exam�N���X�̃R���p�C���Ɏ��s����','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','46','4','Main�N���X�̃R���p�C���Ɏ��s����','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','46','5','���s���ɗ�O���X���[�����','FALSE',now());
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
VALUES('2','50','1','�ueeee�v�ƕ\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','50','2','�ueeeee�v�ƕ\�������','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','50','3','�����\������Ȃ�','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','50','4','�R���p�C���G���[����������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','50','5','���s���ɗ�O���X���[�����','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','51','1','�T�u�N���X�ɁA�X�[�p�[�N���X�̃��\�b�h�Ɩ��O�������ň������قȂ郁�\�b�h���`���邱�Ƃ��u�I�[�o�[���[�h�v�ƌĂ�','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','51','2','�T�u�N���X�ɁA�X�[�p�[�N���X�̃��\�b�h�Ɩ��O�������ň������قȂ郁�\�b�h���`���邱�Ƃ��u�I�[�o�[���C�h�v�ƌĂ�','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','51','3','�T�u�N���X�ɁA�X�[�p�[�N���X�̃��\�b�h�ƃV�O�j�`�����������\�b�h���`���邱�Ƃ��u�I�[�o�[���[�h�v�ƌĂ�','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','51','4','�T�u�N���X�ɁA�X�[�p�[�N���X�̃��\�b�h�ƃV�O�j�`�����������\�b�h���`���邱�Ƃ��u�I�[�o�[���C�h�v�ƌĂ�','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','52','1','�R���X�g���N�^����static�t�B�[���h�ɃA�N�Z�X���Ă��邽�߂ɃR���p�C���G���[�ɂȂ�','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','52','2','�R���X�g���N�^�̖߂�l�^��void�ɂ��Ă��邽�߃R���p�C���G���[�ɂȂ�','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','52','3','�R���X�g���N�^��private�ŏC�����Ă��邽�߃R���p�C���G���[�ɂȂ�','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','52','4','���\�b�h����R���X�g���N�^���Ăяo���Ă��邽�߃R���p�C���G���[�ɂȂ�','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','53','1','3�s��','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','53','2','4�s��','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','53','3','5�s��','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','53','4','6�s��','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','53','5','7�s��','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','53','6','8�s��','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','54','1','0��','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','54','2','1��','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','54','3','2��','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','54','4','3��','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','55','1','�t�B�[���h','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','55','2','private�ŏC������Ă��Ȃ��R���X�g���N�^','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','55','3','private�ŏC�����ꂽ�R���X�g���N�^','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','55','4','final�ŏC������Ă��Ȃ����\�b�h','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','55','5','final�ŏC�����ꂽ���\�b�h','FALSE',now());
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
VALUES('2','57','1','�C���q','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','57','2','���\�b�h��','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','57','3','�����̐�','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','57','4','�����̌^','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','57','5','�����̏���','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','57','6','�����̖��O','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','57','7','�߂�l�^','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','58','1','�p��','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','58','2','�I�[�o�[���C�h','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','58','3','�I�[�o�[���[�h','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','58','4','�C���^�t�F�[�X�̌p��','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','59','1','4���\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','59','2','6���\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','59','3','8���\�������','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','59','4','9���\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','60','1','20���\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','60','2','30���\�������','FALSE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','60','3','�R���p�C���G���[����������','TRUE',now());
INSERT INTO public."option"(test_id,question_id,option_id,text,right_or_wrong,create_datetime)
VALUES('2','60','4','���s���ɗ�O���X���[�����','FALSE',now());



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


