public with sharing class TimeFromLwc {
    @AuraEnabled(cacheable=true)
    public static DateTime timefromlwcbyuser(string inputtime) {
        Date myDate = Date.Today();
        String[] strTimeSplit = inputtime.split(':');
        System.debug(inputtime);

       Time timeChange = Time.newInstance( Integer.valueOf(strTimeSplit[0]) //hour
                                           ,Integer.valueOf(strTimeSplit[1]) //min
                                           ,0                                //sec
                                           ,0);
        DateTime dt = DateTime.newInstanceGMT(myDate, timeChange);
        return dt;
}
}