/**
* @author Scott Covert
* @date 12/14/2016
* @description Page Controller
*/

public with sharing class PageController {

    /**
	* @author Scott Covert
	* @date 12/14/2016
	* @description Takes a list of contact ids and returns the corresponding records
	* @param List List of contact Ids to search for
	* @return Map Mapping of contact ids to their records
	*/
    @AuraEnabled
    public static Map<Id,Contact> getContacts(List<Id> contactIds) {
        return new Map<Id,Contact>([SELECT Id, Name FROM Contact WHERE Id IN :contactIds]);
    }

}