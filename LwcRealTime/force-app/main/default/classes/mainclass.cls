public class mainclass {
    public static integer mainmethod(integer x, integer y) {
        integer finalval = mainclass.secondaryMethod(x , y);
        system.debug(finalval);
        return finalval;
    }
    public static integer secondaryMethod(integer i , integer j) {
        integer sum = i + j;
        return sum;
    }
}