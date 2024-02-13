# Http Server

I have been working on a http server lately. Initially I searched for a lightweight http server but couldn't find one
I was satisfied with. I wanted to learn about the the process of http POST and how forms work from the server side. So
I started to write my own. It was actually pretty simple to get the basics working.

## Security
One area I am concerned about is security, but I didnt want to write my own security model so I decided to use the
Windows user security as much as possible. The http server itself runs as a service using the LOCALSYSTEM account that
most services use. To be more secure though, the server immediately impersonates a user account created specifically for
the web server to use. This is the account used to access files and run CGI processes for anonymous browsing. This account
has only read access to the entire system.

## Authorization
There are two types of authorization in http, Basic and Digest. Basic sends the username and password in clear text
so it isnt very secure. Digest looks more secure but it requires the server knows the password as the authentication text
is encrypted using that password, this didnt seem very suitable when trying to use Windows security as there is no way to
get a users password from the system. I have implemented the Basic security as its fairly easy to implement and as long as
its only used over https I think this should be secure enough. The http server impersonates using the authorization details
to access files and run CGI processes, this is done using the
[ImpersonateLoggedOnUser](https://learn.microsoft.com/en-gb/windows/win32/api/securitybaseapi/nf-securitybaseapi-impersonateloggedonuser) and
[CreateProcessAsUser](https://learn.microsoft.com/en-gb/windows/win32/api/processthreadsapi/nf-processthreadsapi-createprocessasusera) Win32 API calls.

## Service
This is intended to run as a windows service but I havent gotten around to implementing that side of things yet. For
the moment I have been using [Non-Sucking Service Manager](https://iain.cx/src/nssm/)</a>. This seems
to work quite well. The only thing I would have liked is the ability to capture the output but for this program I have
built in the ability to redirect that to a log file.
