public with sharing class accountController {
    @AuraEnabled(cacheable=true)
    public static list<Account> getAccount(){
        return [SELECT id,name,phone,type,industry from Account where AnnualRevenue !=null];
    }
}