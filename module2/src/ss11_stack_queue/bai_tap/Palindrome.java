package ss11_stack_queue.bai_tap;

import java.util.*;

public class Palindrome {
    public static void main(String[] args) {
        System.out.print("Enter the String :");
        Scanner sc =new Scanner(System.in);
        String inputString = sc.nextLine();
        Queue queue = new LinkedList();
        for (int i = inputString.length()-1; i >=0; i--) {
            queue.add(inputString.charAt(i));
        }
        String reverseString = "";
        while (!queue.isEmpty()) {
            reverseString = reverseString+queue.remove();
        }
        if (inputString.equals(reverseString))
            System.out.println("this is a Palindrome String");
        else
            System.out.println("this is a not Palindrome String ");

//        String str = "Able was I ere I saw Elba";
//        boolean flag = false;
//
//        Stack<String> stack = new Stack<>();
//        Queue<String> queue = new ArrayDeque<>();
//
//        for (int i = 0; i < str.length(); i++) {
//            stack.push(str.charAt(i) + "");
//            queue.offer(str.charAt(i)+ "");
//        }
//
//        for (int i = 0; i < str.length(); i++) {
//            if (stack.pop().equalsIgnoreCase(queue.poll())) {
//                flag = true;
//            } else {
//                flag = false;
//                break;
//            }
//        }
//        if (flag) {
//            System.out.println("\"" + str + "\" is palindrome!");
//        } else {
//            System.out.println("\"" + str + "\" is NOT palindrome!");
//        }
    }
}
