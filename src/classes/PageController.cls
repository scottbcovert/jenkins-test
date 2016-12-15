/**
* @author Scott Covert
* @date 12/14/2016
* @description Page Controller
*/

public with sharing class PageController {

    /**
	* @author Scott Covert
	* @date 12/14/2016
	* @description Takes a list of account ids and returns the corresponding records
	* @param List List of Account Ids to search for
	* @return Map Mapping of account ids to their records
	*/
    @AuraEnabled
    public static Map<Id,Account> getAccounts(List<Id> accountIds) {
        return new Map<Id,Account>([SELECT Id, Name FROM Account WHERE Id IN :accountIds]);
    }

}