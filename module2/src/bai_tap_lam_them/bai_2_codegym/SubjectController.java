package bai_tap_lam_them.bai_2_codegym;

public class SubjectController {
    SubjectImpl subject = new SubjectImpl();

    public void display() {

      while (true){
          System.out.println("***---Menu Manager---***");
          System.out.print("1. Display Subject\n" +
                  "2. Add Subject\n" +
                  "3. Update Subject\n" +
                  "4. Delete Subject\n" +
                  "5. Sort by Version\n"+
                  "0. Exit \n" +
                  "you choice: ");
          int choice = Regex.getChoice();
          switch (choice) {
              case 1:
                  subject.display();
                  break;
              case 2:
                  subject.add();
                  break;
              case 3:
                  subject.update();
                  break;
              case 4:
                  subject.delete();
                  break;
              case 5:
                  subject.sort();
                  break;
              case 0:
                  return;
              default:
                  System.out.print("Re- choice: ");
          }
      }
    }
}
