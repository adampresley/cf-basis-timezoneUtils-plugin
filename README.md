# Timezone Utilities CF-Basis Plugin

A simple timezone utility plugin for the CF-Basis framework.

## Usage
Copy the **timezoneUtils** directory and its contents into your Basis plugins folder.
The folder for plugins is named **plugins** by default unless you have customized
it in your application.

Once copied reload your application and Basis will pick it up automatically and
register it as a new application variable object called *timezoneUtils*.

Example:

    <!--- Get the current time, then display what the date/time is in Shanghai --->
    <cfset hereAndNow = now() />
    <cfset inShanghai = application.timezoneUtils.convertDateTimeToTimezone(hereAndNow, "Asia/Shanghai") />

    <cfoutput>Date/Time in Shanghai: #inShanghai#</cfoutput><br />


## License
Copyright 2012 Adam Presley. All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY Adam Presley "AS IS" AND ANY EXPRESS OR IMPLIED
WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO
EVENT SHALL Adam Presley OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
