virtual global class ParentClass {
    public integer age ; 
    public integer aval;
    protected integer bval;
    global integer cval;
    private integer dval;
    
    public ParentClass() {
        age = 26;
        system.debug('I am inside Parent Class');
    }
    
    // virtual parent method for overriding by child class method
    virtual public void login(String username, String password) {
        if(username == 'xyz' && password == '123') {
            system.debug('Logged in from parent Classmethod');
        }
        else {
            system.debug('Log in failed');
        }
    }
    
    
}