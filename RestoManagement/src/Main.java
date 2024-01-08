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
			System.out.println("3. Reserve Table");
			System.out.println("4. Reserve Restaurant");
			
			choice = scan.nextInt();
			scan.nextLine();
			
			switch(choice) {
			case 1:
				Login();
				break;
			case 2:
				Register();
				break;
			case 3:
				Reservation();
				break;
			case 4:
				Restaurant();
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
		
		void Reservation() {
			int a;
			System.out.println("Please Confirm How Many Peoples Eating: ");
			a = scan.nextInt();
			if(a <= 2) {
				System.out.println("Table Confirmed! Your table is reserved in Romantic!");
			} else if (a <= 4) {
				System.out.println("Table Confirmed! Your table is reserved in General!");
			} else if (a <= 10) {
				System.out.println("Table Confirmed! Your table is reserved in Family!");
			} else {
				System.out.println("We're Out Of Table Please Book Another Table!");
			}
			do {
				System.out.println("Please Confirm How Many Peoples Eating: ");
				a = scan.nextInt();
				if(a <= 2) {
					System.out.println("Table Confirmed! Your table is reserved in Romantic!");
				} else if (a <= 4) {
					System.out.println("Table Confirmed! Your table is reserved in General!");
				} else if (a <= 10) {
					System.out.println("Table Confirmed! Your table is reserved in Family!");
				} else {
					System.out.println("We're Out Of Table Please Book Another Table!");
				}
			} while (a > 10);
		}
		
		void Restaurant() {
			System.out.println("Choose Your Restaurant: ");
			int a;
			do {				
				System.out.println("1. Bandung");
				System.out.println("2. Jakarta");
				System.out.println("3. Bali");
				System.out.println("4. Surabaya");
				System.out.println("5. Samarinda");
				System.out.println("6. Padang");
				a = scan.nextInt();
				scan.nextLine();
				if(a < 1 || a > 6) {
					System.out.println("No Restaurant Available!");
				}
			} while (a < 1 || a > 6);
			if(a <= 3) {
				System.out.println("You've Selected Main Restaurant!");				
			} else if(a <= 6) {
				System.out.println("You've Selected Local Special!");
			}
			int nampung = 0;
			
			try {
				ResultSet hasil = Querys.SELECT(String.format("SELECT * FROM menuperlocation WHERE MenuID, MenuName, MenuPrice = '%s', '%s', '%s' ", 
						a));
				hasil.next();
				String contain = hasil.getString("MenuID");
				System.out.printf("%s",contain);
				String contain1 = hasil.getString("MenuName");
				System.out.printf("%s",contain1);
				String container = hasil.getString("MenuPrice");
				System.out.printf("%s",container);
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
