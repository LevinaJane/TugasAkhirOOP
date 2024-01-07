import java.util.Scanner;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Random;
import java.util.Scanner;

public class Main {
	Random ran = new Random();
	Scanner scan = new Scanner(System.in);
		public Main() {
			// TODO Auto-generated constructor stub
			Menu();
			
		}
		void Register() {
			System.out.println("Register Account");
			System.out.println("Input Name: ");
			String listNama = scan.nextLine();
			System.out.println("Input Location: ");
			String listLocation = scan.nextLine();
			System.out.println("Data Succesfully Saved!");
			int nampung = 0;
			do {
				try {
					Querys.CRUD(String.format("INSERT INTO employee Values ('EMP%d%d', '%s', '%s')", 
							ran.nextInt(10), ran.nextInt(10), listNama, listLocation));
					nampung = 1;
				} catch (Exception e) {
					// TODO: handle exception
					nampung = 0;
				}
			} while (nampung == 0);
		}
		
		void Menu() {
			int choice = 0;
			System.out.println("Welcome!");
			System.out.println("1. Login");
			System.out.println("2. Register");
			choice = scan.nextInt();
			scan.nextLine();
			
			switch(choice) {
			case 1:
				Login();
				break;
			case 2:
				Register();
				break;
			}
		}
		
		void Login() {
			System.out.println("Input ID: ");
			String listNama = scan.nextLine();
			int nampung = 0;
			
				try {
					ResultSet hasil = Querys.SELECT(String.format("SELECT * FROM employee WHERE EmployeeID = '%s' ", 
							listNama));
					hasil.next();
					String contain = hasil.getString("EmployeeName");
					System.out.println("Halo "+contain);
				} catch (Exception e) {
					// TODO: handle exception
					nampung = 0;
					System.out.println(e);
					System.out.println("Wrong Input!");
				}
			} 
		
		
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		new Main();
	}

//	switch(ganti)
//
//	{
//	case 1:
//		break;
//	case 2:
//		break;
//		break;
//	case 3: 
//		break;
		
	}

//}
