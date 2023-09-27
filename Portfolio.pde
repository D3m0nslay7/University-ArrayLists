import java.util.Scanner;

ArrayList<Contact> contacts = new ArrayList<Contact>();

Scanner reader;

//left/right buttons
Button buttonLeft;
Button buttonRight;

int currentContact;

void setup() {
  size(600, 600);
  currentContact = 0;
  reader = InputReader.getScanner("C://UniversityWork//Unit 1 - Object Oriented programming (OOP)//Portfolio//Exercise 7//Portfolio//Contacts.csv");
  reader.nextLine();

  while (reader.hasNext()) {

    String header[] = reader.nextLine().split(",");
    contacts.add(new Contact(header[0], header[1], header[2], header[3]));
  }

  buttonRight = new Button(450, height/2, "Right");
  buttonLeft = new Button(50, height/2, "Left");
}

void draw() {
  background(255);
  buttonLeft.Display();
  buttonRight.Display();


  textAlign(CENTER);
  textSize(20);
  fill(0);
  text(contacts.get(currentContact).toString(), width/2, 150);
}

void mouseClicked() {
  if (buttonLeft.check(mouseX, mouseY)) {

    if (currentContact == 0) {
      //we reached the end of the array on the minus side, we loop around
      currentContact = (contacts.size() - 1);
    } else {
      currentContact--;
    }
  } else if (buttonRight.check(mouseX, mouseY)) {

    if (currentContact == contacts.size() - 1) {
      //we reached over the array, we loop around
      currentContact = 0;
    } else {
      currentContact++;
    }
  } else {
    // do nothing
  }
}
