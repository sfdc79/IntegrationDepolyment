public class Childclass  extends ParentClass{
   public integer age ; 
   public Childclass() {
       age = 27;
       aval=50;
       bval=60;
       cval=70;
       // private variable cannot be excessed from child class
      // dval=90;
        system.debug('I am inside Child Class'); 
       // calling child variable age 
             system.debug('age from child' + age); 
       // calling parent variable age
       system.debug('age from parent' + Super.age);     
    }
    // override child method
     public override void login(String username, String password) {
        if(username == 'satish' && password == '123456') {
            system.debug('Logged in from child Classmethod');
        }
        else {
            system.debug('Log in failed');
        }
    }
    
    Public void maimmethod(){
        Childclass cc = new Childclass();
        // calling child method
        cc.login('satish','123456');
        // calling parent method
        super.login('xyz', '123');
    }
}