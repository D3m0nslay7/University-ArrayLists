public class Contact {
  private String firstName;
  private String lastName;
  private String emailAddress;
  private String phoneNumber;

  public Contact(String f, String l, String e, String p) {
    firstName = f;
    lastName = l;
    SetEmail(e);
    SetPhoneNumber(p);
  }
  
  public String toString(){
    String returner = "First Name: "+ firstName +"\nLast Name: "+lastName+"\nEmail Address: "+emailAddress+"\nPhone Number: "+phoneNumber;;
    
    return returner;
  }
  
  public void SetEmail(String e){
    emailAddress = e;
  }
  
  public void SetPhoneNumber(String p){
    phoneNumber = p;
  }
}
