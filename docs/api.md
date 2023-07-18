**&larr; [Back to Project 1 README](../../README.md)**
# REST API Reference Design

<!-- TOC -->
* [REST API Reference Design](#rest-api-reference-design)
  * [Introdcution](#introdcution)
  * [Schemas](#schemas)
  * [Backup Remote Folder](#backup-remote-folder)
  * [Display Logs](#display-logs)
  * [Display Stat](#display-stat)
<!-- TOC -->

## Introdcution
This sections provides a reference design for the RESTful API for the Automation Backup. This is an unoptimized design and can be improved.

---

## Schemas

<pre>
<b>action</b> {
    date : time
    action : string
    command : string
    status : string
}
</pre>

<pre>
<b>stat</b> {
    number-of-backups : interger
    successful-operations: interger
    failed-operations: interger
}
</pre>

<mark>Note</mark>: status can be SUCCESS or FAILED

---

## Backup Remote Folder

>**POST** /backup e.g. http://localhost:8080/backup
>
>**Parameters:**
> N/A

><b>Request Body</b> content type: application/x-www-form-urlencoded 
<pre>
path_to_folder={path_to_folder}
</pre>
where {path_to_folder} is the folder to be backed up

>**Response:** 201 CREATED

>**Response:** 404 NOT FOUND  
> if specified path to folder is not found

>**Response:** 500 Internal Server Error  
> if application error occurs (e.g. disk full) 
<pre>
Error Message  
</pre>

## Display Logs

>**GET** /log e.g. http://localhost:8080/logs?startdate={start-date}&enddate={end-date}
>
>**Parameters: (optional)**  
>- start-date: date for the fist record in the set to be returned in datetime format  
>- end-date: date for the last record in the set to be returned in datetime format  

<mark>Note</mark>: if no start date is provided then start date is assumed to be that of first record, if no end date is provided then end date is assumed to be date of last log 

>**Response** 200 OK
<pre>
<b>[ action{...} ]</b>

<b>Example</b>
[
    {
        "date" : "2024-12-06T15:00:00Z",
        "action" : "TBA",
        "command" : "TBD",
        "status" : "SUCCESS"
    },
    {
        "date" : "2024-12-07T16:00:00Z",
        "action" : "TBA",
        "command" : "TBD",
        "status" : "FAILED"
    }
]

<b>Example - no records found</b>
[
]
</pre>

>**Response:** 400 BAD REQUEST
> if specified range is corrupted or start date is < end date

## Display Stat
>**GET** /stat e.g. http://localhost:8080/stat
>
>**Parameters:**
None
> 
>**Response** 200 OK
<pre>
<b>stat{...}</b>

<b>Example</b>
    {
        number-of-backups : 100
        successful-operations: 98
        failed-operations: 2
    }
</pre>
